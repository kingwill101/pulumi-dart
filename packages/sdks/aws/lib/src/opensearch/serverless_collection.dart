import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_collection_args.dart';
import 'serverless_collection_state.dart';
import 'serverless_collection_timeouts.dart';

/// Manages an AWS OpenSearch Serverless Collection.
///
/// &gt; **NOTE:** An `aws.opensearch.ServerlessCollection` must have encryption configured either by an applicable encryption security policy or by setting `encryptionConfig` directly on the resource.
///
/// &gt; **NOTE:** An `aws.opensearch.ServerlessCollection` is not accessible without configuring an applicable network security policy. Data cannot be accessed without configuring an applicable data access policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessSecurityPolicy("example", {
///     name: "example",
///     type: "encryption",
///     policy: JSON.stringify({
///         Rules: [{
///             Resource: ["collection/example"],
///             ResourceType: "collection",
///         }],
///         AWSOwnedKey: true,
///     }),
/// });
/// const exampleServerlessCollection = new aws.opensearch.ServerlessCollection("example", {name: "example"}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessSecurityPolicy("example",
///     name="example",
///     type="encryption",
///     policy=json.dumps({
///         "Rules": [{
///             "Resource": ["collection/example"],
///             "ResourceType": "collection",
///         }],
///         "AWSOwnedKey": True,
///     }))
/// example_serverless_collection = aws.opensearch.ServerlessCollection("example", name="example",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearch.ServerlessSecurityPolicy("example", new()
///     {
///         Name = "example",
///         Type = "encryption",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Rules"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Resource"] = new[]
///                     {
///                         "collection/example",
///                     },
///                     ["ResourceType"] = "collection",
///                 },
///             },
///             ["AWSOwnedKey"] = true,
///         }),
///     });
///
///     var exampleServerlessCollection = new Aws.OpenSearch.ServerlessCollection("example", new()
///     {
///         Name = "example",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Rules": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Resource": []string{
/// 						"collection/example",
/// 					},
/// 					"ResourceType": "collection",
/// 				},
/// 			},
/// 			"AWSOwnedKey": true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := opensearch.NewServerlessSecurityPolicy(ctx, "example", &opensearch.ServerlessSecurityPolicyArgs{
/// 			Name:   pulumi.String("example"),
/// 			Type:   pulumi.String("encryption"),
/// 			Policy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewServerlessCollection(ctx, "example", &opensearch.ServerlessCollectionArgs{
/// 			Name: pulumi.String("example"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_opensearch_serverlesssecuritypolicy" "example" {
///   name = "example"
///   type = "encryption"
///   policy = jsonencode({
///     "Rules" = [{
///       "Resource"     = ["collection/example"]
///       "ResourceType" = "collection"
///     }]
///     "AWSOwnedKey" = true
///   })
/// }
/// resource "aws_opensearch_serverlesscollection" "example" {
///   depends_on = [aws_opensearch_serverlesssecuritypolicy.example]
///   name       = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicy;
/// import com.pulumi.aws.opensearch.ServerlessSecurityPolicyArgs;
/// import com.pulumi.aws.opensearch.ServerlessCollection;
/// import com.pulumi.aws.opensearch.ServerlessCollectionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ServerlessSecurityPolicy("example", ServerlessSecurityPolicyArgs.builder()
///             .name("example")
///             .type("encryption")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Rules", jsonArray(jsonObject(
///                         jsonProperty("Resource", jsonArray("collection/example")),
///                         jsonProperty("ResourceType", "collection")
///                     ))),
///                     jsonProperty("AWSOwnedKey", true)
///                 )))
///             .build());
///
///         var exampleServerlessCollection = new ServerlessCollection("exampleServerlessCollection", ServerlessCollectionArgs.builder()
///             .name("example")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessSecurityPolicy
///     properties:
///       name: example
///       type: encryption
///       policy:
///         fn::toJSON:
///           Rules:
///             - Resource:
///                 - collection/example
///               ResourceType: collection
///           AWSOwnedKey: true
///   exampleServerlessCollection:
///     type: aws:opensearch:ServerlessCollection
///     name: example
///     properties:
///       name: example
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### With a Collection Group and Direct Encryption Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "example",
///     deletionWindowInDays: 7,
/// });
/// const exampleServerlessCollectionGroup = new aws.opensearch.ServerlessCollectionGroup("example", {
///     name: "example-group",
///     standbyReplicas: "ENABLED",
/// });
/// const exampleServerlessCollection = new aws.opensearch.ServerlessCollection("example", {
///     name: "example",
///     type: "SEARCH",
///     collectionGroupName: exampleServerlessCollectionGroup.name,
///     encryptionConfigs: [{
///         kmsKeyArn: example.arn,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="example",
///     deletion_window_in_days=7)
/// example_serverless_collection_group = aws.opensearch.ServerlessCollectionGroup("example",
///     name="example-group",
///     standby_replicas="ENABLED")
/// example_serverless_collection = aws.opensearch.ServerlessCollection("example",
///     name="example",
///     type="SEARCH",
///     collection_group_name=example_serverless_collection_group.name,
///     encryption_configs=[{
///         "kms_key_arn": example.arn,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "example",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleServerlessCollectionGroup = new Aws.OpenSearch.ServerlessCollectionGroup("example", new()
///     {
///         Name = "example-group",
///         StandbyReplicas = "ENABLED",
///     });
///
///     var exampleServerlessCollection = new Aws.OpenSearch.ServerlessCollection("example", new()
///     {
///         Name = "example",
///         Type = "SEARCH",
///         CollectionGroupName = exampleServerlessCollectionGroup.Name,
///         EncryptionConfigs = new[]
///         {
///             new Aws.OpenSearch.Inputs.ServerlessCollectionEncryptionConfigArgs
///             {
///                 KmsKeyArn = example.Arn,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("example"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServerlessCollectionGroup, err := opensearch.NewServerlessCollectionGroup(ctx, "example", &opensearch.ServerlessCollectionGroupArgs{
/// 			Name:            pulumi.String("example-group"),
/// 			StandbyReplicas: pulumi.String("ENABLED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewServerlessCollection(ctx, "example", &opensearch.ServerlessCollectionArgs{
/// 			Name:                pulumi.String("example"),
/// 			Type:                pulumi.String("SEARCH"),
/// 			CollectionGroupName: exampleServerlessCollectionGroup.Name,
/// 			EncryptionConfigs: opensearch.ServerlessCollectionEncryptionConfigArray{
/// 				&opensearch.ServerlessCollectionEncryptionConfigArgs{
/// 					KmsKeyArn: example.Arn,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "example" {
///   description             = "example"
///   deletion_window_in_days = 7
/// }
/// resource "aws_opensearch_serverlesscollectiongroup" "example" {
///   name             = "example-group"
///   standby_replicas = "ENABLED"
/// }
/// resource "aws_opensearch_serverlesscollection" "example" {
///   name                  = "example"
///   type                  = "SEARCH"
///   collection_group_name = aws_opensearch_serverlesscollectiongroup.example.name
///   encryption_configs {
///     kms_key_arn = aws_kms_key.example.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.opensearch.ServerlessCollectionGroup;
/// import com.pulumi.aws.opensearch.ServerlessCollectionGroupArgs;
/// import com.pulumi.aws.opensearch.ServerlessCollection;
/// import com.pulumi.aws.opensearch.ServerlessCollectionArgs;
/// import com.pulumi.aws.opensearch.inputs.ServerlessCollectionEncryptionConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleServerlessCollectionGroup = new ServerlessCollectionGroup("exampleServerlessCollectionGroup", ServerlessCollectionGroupArgs.builder()
///             .name("example-group")
///             .standbyReplicas("ENABLED")
///             .build());
///
///         var exampleServerlessCollection = new ServerlessCollection("exampleServerlessCollection", ServerlessCollectionArgs.builder()
///             .name("example")
///             .type("SEARCH")
///             .collectionGroupName(exampleServerlessCollectionGroup.name())
///             .encryptionConfigs(ServerlessCollectionEncryptionConfigArgs.builder()
///                 .kmsKeyArn(example.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: example
///       deletionWindowInDays: 7
///   exampleServerlessCollectionGroup:
///     type: aws:opensearch:ServerlessCollectionGroup
///     name: example
///     properties:
///       name: example-group
///       standbyReplicas: ENABLED
///   exampleServerlessCollection:
///     type: aws:opensearch:ServerlessCollection
///     name: example
///     properties:
///       name: example
///       type: SEARCH
///       collectionGroupName: ${exampleServerlessCollectionGroup.name}
///       encryptionConfigs:
///         - kmsKeyArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Unique identifier for the collection.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import OpenSearchServerless Collection using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessCollection:ServerlessCollection example example
/// ```
class ServerlessCollection extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the collection.
  late final pulumi.Output<String> arn;
  /// Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless collection.
  late final pulumi.Output<String> collectionEndpoint;
  /// Name of the collection group to associate with this collection.
  late final pulumi.Output<String?> collectionGroupName;
  /// Collection-specific endpoint used to access OpenSearch Dashboards.
  late final pulumi.Output<String> dashboardEndpoint;
  /// Description of the collection.
  late final pulumi.Output<String?> description;
  /// Configuration block for direct collection encryption settings. See `encryptionConfig` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> encryptionConfigs;
  /// ARN of the Amazon Web Services KMS key used to encrypt the collection.
  late final pulumi.Output<String> kmsKeyArn;
  /// Name of the collection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether standby replicas should be used for a collection. One of `ENABLED` or `DISABLED`. Defaults to `ENABLED`.
  late final pulumi.Output<String> standbyReplicas;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ServerlessCollectionTimeouts?> timeouts;
  /// Type of collection. One of `SEARCH`, `TIMESERIES`, or `VECTORSEARCH`. Defaults to `TIMESERIES`.
  late final pulumi.Output<String> type;
  /// Configuration block for vector search options. Only valid when `type` is `VECTORSEARCH`. See `vectorOptions` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> vectorOptions;

  /// Creates a new [ServerlessCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessCollection]. {@macro pulumi_opensearch_serverless_collection_serverless_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessCollection(
    String name, {
    ServerlessCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessCollection:ServerlessCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    collectionEndpoint = registerOutput<String>('collectionEndpoint');
    collectionGroupName = registerOutput<String?>('collectionGroupName');
    dashboardEndpoint = registerOutput<String>('dashboardEndpoint');
    description = registerOutput<String?>('description');
    encryptionConfigs = registerOutput<List<Map<String, dynamic>>>('encryptionConfigs');
    kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    standbyReplicas = registerOutput<String>('standbyReplicas');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ServerlessCollectionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessCollectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vectorOptions = registerOutput<List<Map<String, dynamic>>>('vectorOptions');
  }

  /// Gets an existing [ServerlessCollection] resource's state with the given [name] and [id].
  static ServerlessCollection get(
    String name,
    pulumi.Input<String> id, {
    ServerlessCollectionState? state,
  }) {
    return ServerlessCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerlessCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessCollection:ServerlessCollection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    collectionEndpoint = registerOutput<String>('collectionEndpoint');
    collectionGroupName = registerOutput<String?>('collectionGroupName');
    dashboardEndpoint = registerOutput<String>('dashboardEndpoint');
    description = registerOutput<String?>('description');
    encryptionConfigs = registerOutput<List<Map<String, dynamic>>>('encryptionConfigs');
    kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    standbyReplicas = registerOutput<String>('standbyReplicas');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ServerlessCollectionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessCollectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vectorOptions = registerOutput<List<Map<String, dynamic>>>('vectorOptions');
  }
}
