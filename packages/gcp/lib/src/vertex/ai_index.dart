import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_args.dart';
import 'ai_index_deployed_index.dart';
import 'ai_index_encryption_spec.dart';
import 'ai_index_index_stat.dart';
import 'ai_index_metadata.dart';

/// A representation of a collection of database items organized in a way that allows for approximate nearest neighbor (a.k.a ANN) algorithms search.
///
///
/// To get more information about Index, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.indexes/)
///
/// ## Example Usage
///
/// ### Vertex Ai Index
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const vertexaiSa = new gcp.projects.ServiceIdentity("vertexai_sa", {service: "aiplatform.googleapis.com"});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "vertex-ai-index-test",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// // The sample data comes from the following link:
/// // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// const data = new gcp.storage.BucketObject("data", {
///     name: "contents/data.json",
///     bucket: bucket.name,
///     content: `{\\"id\\": \\"42\\", \\"embedding\\": [0.5, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"cat\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"feline\\"]}]}
/// {\\"id\\": \\"43\\", \\"embedding\\": [0.6, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"dog\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"canine\\"]}]}
/// `,
/// });
/// const vertexaiEncrypterdecrypter = new gcp.kms.CryptoKeyIAMMember("vertexai_encrypterdecrypter", {
///     cryptoKeyId: "kms-name",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: vertexaiSa.member,
/// });
/// const index = new gcp.vertex.AiIndex("index", {
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     displayName: "test-index",
///     description: "index for test",
///     metadata: {
///         contentsDeltaUri: pulumi.interpolate`gs://${bucket.name}/contents`,
///         config: {
///             dimensions: 2,
///             approximateNeighborsCount: 150,
///             shardSize: "SHARD_SIZE_SMALL",
///             distanceMeasureType: "DOT_PRODUCT_DISTANCE",
///             algorithmConfig: {
///                 treeAhConfig: {
///                     leafNodeEmbeddingCount: 500,
///                     leafNodesToSearchPercent: 7,
///                 },
///             },
///         },
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
///     indexUpdateMethod: "BATCH_UPDATE",
/// }, {
///     dependsOn: [vertexaiEncrypterdecrypter],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// vertexai_sa = gcp.projects.ServiceIdentity("vertexai_sa", service="aiplatform.googleapis.com")
/// bucket = gcp.storage.Bucket("bucket",
///     name="vertex-ai-index-test",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// # The sample data comes from the following link:
/// # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// data = gcp.storage.BucketObject("data",
///     name="contents/data.json",
///     bucket=bucket.name,
///     content="""{\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
/// """)
/// vertexai_encrypterdecrypter = gcp.kms.CryptoKeyIAMMember("vertexai_encrypterdecrypter",
///     crypto_key_id="kms-name",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=vertexai_sa.member)
/// index = gcp.vertex.AiIndex("index",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     display_name="test-index",
///     description="index for test",
///     metadata={
///         "contents_delta_uri": bucket.name.apply(lambda name: f"gs://{name}/contents"),
///         "config": {
///             "dimensions": 2,
///             "approximate_neighbors_count": 150,
///             "shard_size": "SHARD_SIZE_SMALL",
///             "distance_measure_type": "DOT_PRODUCT_DISTANCE",
///             "algorithm_config": {
///                 "tree_ah_config": {
///                     "leaf_node_embedding_count": 500,
///                     "leaf_nodes_to_search_percent": 7,
///                 },
///             },
///         },
///     },
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     },
///     index_update_method="BATCH_UPDATE",
///     opts = pulumi.ResourceOptions(depends_on=[vertexai_encrypterdecrypter]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vertexaiSa = new Gcp.Projects.ServiceIdentity("vertexai_sa", new()
///     {
///         Service = "aiplatform.googleapis.com",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "vertex-ai-index-test",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     // The sample data comes from the following link:
///     // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///     var data = new Gcp.Storage.BucketObject("data", new()
///     {
///         Name = "contents/data.json",
///         Bucket = bucket.Name,
///         Content = @"{\""id\"": \""42\"", \""embedding\"": [0.5, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""cat\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""feline\""]}]}
/// {\""id\"": \""43\"", \""embedding\"": [0.6, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""dog\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""canine\""]}]}
/// ",
///     });
///
///     var vertexaiEncrypterdecrypter = new Gcp.Kms.CryptoKeyIAMMember("vertexai_encrypterdecrypter", new()
///     {
///         CryptoKeyId = "kms-name",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = vertexaiSa.Member,
///     });
///
///     var index = new Gcp.Vertex.AiIndex("index", new()
///     {
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         DisplayName = "test-index",
///         Description = "index for test",
///         Metadata = new Gcp.Vertex.Inputs.AiIndexMetadataArgs
///         {
///             ContentsDeltaUri = bucket.Name.Apply(name => $"gs://{name}/contents"),
///             Config = new Gcp.Vertex.Inputs.AiIndexMetadataConfigArgs
///             {
///                 Dimensions = 2,
///                 ApproximateNeighborsCount = 150,
///                 ShardSize = "SHARD_SIZE_SMALL",
///                 DistanceMeasureType = "DOT_PRODUCT_DISTANCE",
///                 AlgorithmConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigArgs
///                 {
///                     TreeAhConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs
///                     {
///                         LeafNodeEmbeddingCount = 500,
///                         LeafNodesToSearchPercent = 7,
///                     },
///                 },
///             },
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiIndexEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///         IndexUpdateMethod = "BATCH_UPDATE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexaiEncrypterdecrypter,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vertexaiSa, err := projects.NewServiceIdentity(ctx, "vertexai_sa", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("aiplatform.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("vertex-ai-index-test"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The sample data comes from the following link:
/// 		// https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// 		_, err = storage.NewBucketObject(ctx, "data", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("contents/data.json"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("{\\\"id\\\": \\\"42\\\", \\\"embedding\\\": [0.5, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"cat\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"feline\\\"]}]}\n{\\\"id\\\": \\\"43\\\", \\\"embedding\\\": [0.6, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"dog\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"canine\\\"]}]}\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexaiEncrypterdecrypter, err := kms.NewCryptoKeyIAMMember(ctx, "vertexai_encrypterdecrypter", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-name"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      vertexaiSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiIndex(ctx, "index", &vertex.AiIndexArgs{
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("test-index"),
/// 			Description: pulumi.String("index for test"),
/// 			Metadata: &vertex.AiIndexMetadataArgs{
/// 				ContentsDeltaUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/contents", name), nil
/// 				}).(pulumi.StringOutput),
/// 				Config: &vertex.AiIndexMetadataConfigArgs{
/// 					Dimensions:                pulumi.Int(2),
/// 					ApproximateNeighborsCount: pulumi.Int(150),
/// 					ShardSize:                 pulumi.String("SHARD_SIZE_SMALL"),
/// 					DistanceMeasureType:       pulumi.String("DOT_PRODUCT_DISTANCE"),
/// 					AlgorithmConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigArgs{
/// 						TreeAhConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs{
/// 							LeafNodeEmbeddingCount:   pulumi.Int(500),
/// 							LeafNodesToSearchPercent: pulumi.Int(7),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EncryptionSpec: &vertex.AiIndexEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 			IndexUpdateMethod: pulumi.String("BATCH_UPDATE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexaiEncrypterdecrypter,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiIndex;
/// import com.pulumi.gcp.vertex.AiIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEncryptionSpecArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var vertexaiSa = new ServiceIdentity("vertexaiSa", ServiceIdentityArgs.builder()
///             .service("aiplatform.googleapis.com")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("vertex-ai-index-test")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         // The sample data comes from the following link:
///         // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///         var data = new BucketObject("data", BucketObjectArgs.builder()
///             .name("contents/data.json")
///             .bucket(bucket.name())
///             .content("""
/// {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
///             """)
///             .build());
///
///         var vertexaiEncrypterdecrypter = new CryptoKeyIAMMember("vertexaiEncrypterdecrypter", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-name")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(vertexaiSa.member())
///             .build());
///
///         var index = new AiIndex("index", AiIndexArgs.builder()
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .displayName("test-index")
///             .description("index for test")
///             .metadata(AiIndexMetadataArgs.builder()
///                 .contentsDeltaUri(bucket.name().applyValue(_name -> String.format("gs://%s/contents", _name)))
///                 .config(AiIndexMetadataConfigArgs.builder()
///                     .dimensions(2)
///                     .approximateNeighborsCount(150)
///                     .shardSize("SHARD_SIZE_SMALL")
///                     .distanceMeasureType("DOT_PRODUCT_DISTANCE")
///                     .algorithmConfig(AiIndexMetadataConfigAlgorithmConfigArgs.builder()
///                         .treeAhConfig(AiIndexMetadataConfigAlgorithmConfigTreeAhConfigArgs.builder()
///                             .leafNodeEmbeddingCount(500)
///                             .leafNodesToSearchPercent(7)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .encryptionSpec(AiIndexEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .indexUpdateMethod("BATCH_UPDATE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vertexaiEncrypterdecrypter)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vertexaiSa:
///     type: gcp:projects:ServiceIdentity
///     name: vertexai_sa
///     properties:
///       service: aiplatform.googleapis.com
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: vertex-ai-index-test
///       location: us-central1
///       uniformBucketLevelAccess: true
///   # The sample data comes from the following link:
///   # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///   data:
///     type: gcp:storage:BucketObject
///     properties:
///       name: contents/data.json
///       bucket: ${bucket.name}
///       content: |
///         {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
///         {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
///   vertexaiEncrypterdecrypter:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: vertexai_encrypterdecrypter
///     properties:
///       cryptoKeyId: kms-name
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${vertexaiSa.member}
///   index:
///     type: gcp:vertex:AiIndex
///     properties:
///       labels:
///         foo: bar
///       region: us-central1
///       displayName: test-index
///       description: index for test
///       metadata:
///         contentsDeltaUri: gs://${bucket.name}/contents
///         config:
///           dimensions: 2
///           approximateNeighborsCount: 150
///           shardSize: SHARD_SIZE_SMALL
///           distanceMeasureType: DOT_PRODUCT_DISTANCE
///           algorithmConfig:
///             treeAhConfig:
///               leafNodeEmbeddingCount: 500
///               leafNodesToSearchPercent: 7
///       encryptionSpec:
///         kmsKeyName: kms-name
///       indexUpdateMethod: BATCH_UPDATE
///     options:
///       dependsOn:
///         - ${vertexaiEncrypterdecrypter}
/// ```
///
/// ### Vertex Ai Index Streaming
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "vertex-ai-index-test",
///     location: "us-central1",
///     uniformBucketLevelAccess: true,
/// });
/// // The sample data comes from the following link:
/// // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// const data = new gcp.storage.BucketObject("data", {
///     name: "contents/data.json",
///     bucket: bucket.name,
///     content: `{\\"id\\": \\"42\\", \\"embedding\\": [0.5, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"cat\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"feline\\"]}]}
/// {\\"id\\": \\"43\\", \\"embedding\\": [0.6, 1.0], \\"restricts\\": [{\\"namespace\\": \\"class\\", \\"allow\\": [\\"dog\\", \\"pet\\"]},{\\"namespace\\": \\"category\\", \\"allow\\": [\\"canine\\"]}]}
/// `,
/// });
/// const index = new gcp.vertex.AiIndex("index", {
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     displayName: "test-index",
///     description: "index for test",
///     metadata: {
///         contentsDeltaUri: pulumi.interpolate`gs://${bucket.name}/contents`,
///         config: {
///             dimensions: 2,
///             shardSize: "SHARD_SIZE_LARGE",
///             distanceMeasureType: "COSINE_DISTANCE",
///             featureNormType: "UNIT_L2_NORM",
///             algorithmConfig: {
///                 bruteForceConfig: {},
///             },
///         },
///     },
///     indexUpdateMethod: "STREAM_UPDATE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="vertex-ai-index-test",
///     location="us-central1",
///     uniform_bucket_level_access=True)
/// # The sample data comes from the following link:
/// # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// data = gcp.storage.BucketObject("data",
///     name="contents/data.json",
///     bucket=bucket.name,
///     content="""{\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
/// """)
/// index = gcp.vertex.AiIndex("index",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     display_name="test-index",
///     description="index for test",
///     metadata={
///         "contents_delta_uri": bucket.name.apply(lambda name: f"gs://{name}/contents"),
///         "config": {
///             "dimensions": 2,
///             "shard_size": "SHARD_SIZE_LARGE",
///             "distance_measure_type": "COSINE_DISTANCE",
///             "feature_norm_type": "UNIT_L2_NORM",
///             "algorithm_config": {
///                 "brute_force_config": {},
///             },
///         },
///     },
///     index_update_method="STREAM_UPDATE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "vertex-ai-index-test",
///         Location = "us-central1",
///         UniformBucketLevelAccess = true,
///     });
///
///     // The sample data comes from the following link:
///     // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///     var data = new Gcp.Storage.BucketObject("data", new()
///     {
///         Name = "contents/data.json",
///         Bucket = bucket.Name,
///         Content = @"{\""id\"": \""42\"", \""embedding\"": [0.5, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""cat\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""feline\""]}]}
/// {\""id\"": \""43\"", \""embedding\"": [0.6, 1.0], \""restricts\"": [{\""namespace\"": \""class\"", \""allow\"": [\""dog\"", \""pet\""]},{\""namespace\"": \""category\"", \""allow\"": [\""canine\""]}]}
/// ",
///     });
///
///     var index = new Gcp.Vertex.AiIndex("index", new()
///     {
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         DisplayName = "test-index",
///         Description = "index for test",
///         Metadata = new Gcp.Vertex.Inputs.AiIndexMetadataArgs
///         {
///             ContentsDeltaUri = bucket.Name.Apply(name => $"gs://{name}/contents"),
///             Config = new Gcp.Vertex.Inputs.AiIndexMetadataConfigArgs
///             {
///                 Dimensions = 2,
///                 ShardSize = "SHARD_SIZE_LARGE",
///                 DistanceMeasureType = "COSINE_DISTANCE",
///                 FeatureNormType = "UNIT_L2_NORM",
///                 AlgorithmConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigArgs
///                 {
///                     BruteForceConfig = null,
///                 },
///             },
///         },
///         IndexUpdateMethod = "STREAM_UPDATE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("vertex-ai-index-test"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The sample data comes from the following link:
/// 		// https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
/// 		_, err = storage.NewBucketObject(ctx, "data", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("contents/data.json"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("{\\\"id\\\": \\\"42\\\", \\\"embedding\\\": [0.5, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"cat\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"feline\\\"]}]}\n{\\\"id\\\": \\\"43\\\", \\\"embedding\\\": [0.6, 1.0], \\\"restricts\\\": [{\\\"namespace\\\": \\\"class\\\", \\\"allow\\\": [\\\"dog\\\", \\\"pet\\\"]},{\\\"namespace\\\": \\\"category\\\", \\\"allow\\\": [\\\"canine\\\"]}]}\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiIndex(ctx, "index", &vertex.AiIndexArgs{
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region:      pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("test-index"),
/// 			Description: pulumi.String("index for test"),
/// 			Metadata: &vertex.AiIndexMetadataArgs{
/// 				ContentsDeltaUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("gs://%v/contents", name), nil
/// 				}).(pulumi.StringOutput),
/// 				Config: &vertex.AiIndexMetadataConfigArgs{
/// 					Dimensions:          pulumi.Int(2),
/// 					ShardSize:           pulumi.String("SHARD_SIZE_LARGE"),
/// 					DistanceMeasureType: pulumi.String("COSINE_DISTANCE"),
/// 					FeatureNormType:     pulumi.String("UNIT_L2_NORM"),
/// 					AlgorithmConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigArgs{
/// 						BruteForceConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigBruteForceConfigArgs{},
/// 					},
/// 				},
/// 			},
/// 			IndexUpdateMethod: pulumi.String("STREAM_UPDATE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.vertex.AiIndex;
/// import com.pulumi.gcp.vertex.AiIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigBruteForceConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("vertex-ai-index-test")
///             .location("us-central1")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         // The sample data comes from the following link:
///         // https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///         var data = new BucketObject("data", BucketObjectArgs.builder()
///             .name("contents/data.json")
///             .bucket(bucket.name())
///             .content("""
/// {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
/// {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
///             """)
///             .build());
///
///         var index = new AiIndex("index", AiIndexArgs.builder()
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .displayName("test-index")
///             .description("index for test")
///             .metadata(AiIndexMetadataArgs.builder()
///                 .contentsDeltaUri(bucket.name().applyValue(_name -> String.format("gs://%s/contents", _name)))
///                 .config(AiIndexMetadataConfigArgs.builder()
///                     .dimensions(2)
///                     .shardSize("SHARD_SIZE_LARGE")
///                     .distanceMeasureType("COSINE_DISTANCE")
///                     .featureNormType("UNIT_L2_NORM")
///                     .algorithmConfig(AiIndexMetadataConfigAlgorithmConfigArgs.builder()
///                         .bruteForceConfig(AiIndexMetadataConfigAlgorithmConfigBruteForceConfigArgs.builder()
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .indexUpdateMethod("STREAM_UPDATE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: vertex-ai-index-test
///       location: us-central1
///       uniformBucketLevelAccess: true
///   # The sample data comes from the following link:
///   # https://cloud.google.com/vertex-ai/docs/matching-engine/filtering#specify-namespaces-tokens
///   data:
///     type: gcp:storage:BucketObject
///     properties:
///       name: contents/data.json
///       bucket: ${bucket.name}
///       content: |
///         {\"id\": \"42\", \"embedding\": [0.5, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"cat\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"feline\"]}]}
///         {\"id\": \"43\", \"embedding\": [0.6, 1.0], \"restricts\": [{\"namespace\": \"class\", \"allow\": [\"dog\", \"pet\"]},{\"namespace\": \"category\", \"allow\": [\"canine\"]}]}
///   index:
///     type: gcp:vertex:AiIndex
///     properties:
///       labels:
///         foo: bar
///       region: us-central1
///       displayName: test-index
///       description: index for test
///       metadata:
///         contentsDeltaUri: gs://${bucket.name}/contents
///         config:
///           dimensions: 2
///           shardSize: SHARD_SIZE_LARGE
///           distanceMeasureType: COSINE_DISTANCE
///           featureNormType: UNIT_L2_NORM
///           algorithmConfig:
///             bruteForceConfig: {}
///       indexUpdateMethod: STREAM_UPDATE
/// ```
///
///
/// ## Import
///
/// Index can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/indexes/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Index can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default projects/{{project}}/locations/{{region}}/indexes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiIndex:AiIndex default {{name}}
/// ```
class AiIndex extends pulumi.CustomResource {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The pointers to DeployedIndexes created from this Index. An Index can be only deleted if all its DeployedIndexes had been undeployed first.
  /// Structure is documented below.
  late final pulumi.Output<List<AiIndexDeployedIndex>> deployedIndexes;

  /// The description of the Index.
  late final pulumi.Output<String?> description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiIndexEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;

  /// Stats of the index resource.
  /// Structure is documented below.
  late final pulumi.Output<List<AiIndexIndexStat>> indexStats;

  /// The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// * BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
  /// * STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time.
  late final pulumi.Output<String?> indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Additional information about the Index.
  /// Although this field is not marked as required in the API specification, it is currently required when creating an Index and must be provided.
  /// Attempts to create an Index without this field will result in an API error.
  /// Structure is documented below.
  late final pulumi.Output<AiIndexMetadata> metadata;

  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information.
  late final pulumi.Output<String> metadataSchemaUri;

  /// The resource name of the Index.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of the index. eg us-central1
  late final pulumi.Output<String?> region;

  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiIndex]. {@macro pulumi_vertex_ai_index_ai_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiIndex(
    String name, {
    AiIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vertex/aiIndex:AiIndex',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.deployedIndexes = registerOutput<List<AiIndexDeployedIndex>>(
      'deployedIndexes',
    );
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.encryptionSpec = registerOutput<AiIndexEncryptionSpec?>(
      'encryptionSpec',
    );
    this.etag = registerOutput<String>('etag');
    this.indexStats = registerOutput<List<AiIndexIndexStat>>('indexStats');
    this.indexUpdateMethod = registerOutput<String?>('indexUpdateMethod');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.metadata = registerOutput<AiIndexMetadata>('metadata');
    this.metadataSchemaUri = registerOutput<String>('metadataSchemaUri');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
