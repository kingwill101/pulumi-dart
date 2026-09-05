import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_args.dart';
import 'graph_state.dart';
import 'graph_timeouts.dart';
import 'graph_vector_search_configuration.dart';

/// The `aws.neptunegraph.Graph` resource creates an Amazon Analytics Graph.
///
/// ## Example Usage
///
/// ### Neptune Graph (with Vector Search configuration)
///
/// Creates a Neptune Graph with 16GB provisioned memory, vector search capability with 128 dimensions, and a single replica for high availability.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create Neptune Graph
/// const example = new aws.neptunegraph.Graph("example", {
///     vectorSearchConfiguration: {
///         vectorSearchDimension: 128,
///     },
///     graphName: "example-graph-test-20250203",
///     provisionedMemory: 16,
///     deletionProtection: false,
///     publicConnectivity: false,
///     replicaCount: 1,
///     kmsKeyIdentifier: "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
///     tags: {
///         Environment: "Development",
///         ModifiedBy: "AWS",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create Neptune Graph
/// example = aws.neptunegraph.Graph("example",
///     vector_search_configuration={
///         "vector_search_dimension": 128,
///     },
///     graph_name="example-graph-test-20250203",
///     provisioned_memory=16,
///     deletion_protection=False,
///     public_connectivity=False,
///     replica_count=1,
///     kms_key_identifier="arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
///     tags={
///         "Environment": "Development",
///         "ModifiedBy": "AWS",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create Neptune Graph
///     var example = new Aws.NeptuneGraph.Graph("example", new()
///     {
///         VectorSearchConfiguration = new Aws.NeptuneGraph.Inputs.GraphVectorSearchConfigurationArgs
///         {
///             VectorSearchDimension = 128,
///         },
///         GraphName = "example-graph-test-20250203",
///         ProvisionedMemory = 16,
///         DeletionProtection = false,
///         PublicConnectivity = false,
///         ReplicaCount = 1,
///         KmsKeyIdentifier = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
///         Tags =
///         {
///             { "Environment", "Development" },
///             { "ModifiedBy", "AWS" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptunegraph"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create Neptune Graph
/// 		_, err := neptunegraph.NewGraph(ctx, "example", &neptunegraph.GraphArgs{
/// 			VectorSearchConfiguration: &neptunegraph.GraphVectorSearchConfigurationArgs{
/// 				VectorSearchDimension: pulumi.Int(128),
/// 			},
/// 			GraphName:          pulumi.String("example-graph-test-20250203"),
/// 			ProvisionedMemory:  pulumi.Int(16),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			PublicConnectivity: pulumi.Bool(false),
/// 			ReplicaCount:       pulumi.Int(1),
/// 			KmsKeyIdentifier:   pulumi.String("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Development"),
/// 				"ModifiedBy":  pulumi.String("AWS"),
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
/// # Create Neptune Graph
/// resource "aws_neptunegraph_graph" "example" {
///   vector_search_configuration = {
///     vector_search_dimension = 128
///   }
///   graph_name          = "example-graph-test-20250203"
///   provisioned_memory  = 16
///   deletion_protection = false
///   public_connectivity = false
///   replica_count       = 1
///   kms_key_identifier  = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
///   tags = {
///     "Environment" = "Development"
///     "ModifiedBy"  = "AWS"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.neptunegraph.Graph;
/// import com.pulumi.aws.neptunegraph.GraphArgs;
/// import com.pulumi.aws.neptunegraph.inputs.GraphVectorSearchConfigurationArgs;
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
///         // Create Neptune Graph
///         var example = new Graph("example", GraphArgs.builder()
///             .vectorSearchConfiguration(GraphVectorSearchConfigurationArgs.builder()
///                 .vectorSearchDimension(128)
///                 .build())
///             .graphName("example-graph-test-20250203")
///             .provisionedMemory(16)
///             .deletionProtection(false)
///             .publicConnectivity(false)
///             .replicaCount(1)
///             .kmsKeyIdentifier("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "Development"),
///                 Map.entry("ModifiedBy", "AWS")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create Neptune Graph
///   example:
///     type: aws:neptunegraph:Graph
///     properties:
///       vectorSearchConfiguration:
///         vectorSearchDimension: 128
///       graphName: example-graph-test-20250203
///       provisionedMemory: 16
///       deletionProtection: false
///       publicConnectivity: false
///       replicaCount: 1
///       kmsKeyIdentifier: arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
///       tags:
///         Environment: Development
///         ModifiedBy: AWS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptunegraph.Graph` using the graph identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptunegraph/graph:Graph example "graph_id"
/// ```
class Graph extends pulumi.CustomResource {
  /// (String) Graph resource ARN
  late final pulumi.Output<String> arn;
  /// Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  late final pulumi.Output<bool> deletionProtection;
  /// (String) The connection endpoint for the graph. For example: `g-12a3bcdef4.us-east-1.neptune-graph.amazonaws.com`
  late final pulumi.Output<String> endpoint;
  /// Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  late final pulumi.Output<String> graphName;
  /// Allows user to specify name prefix and have remainder of name automatically generated.
  late final pulumi.Output<String?> graphNamePrefix;
  /// The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  late final pulumi.Output<String> kmsKeyIdentifier;
  /// The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> provisionedMemory;
  /// Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its DNS endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  late final pulumi.Output<bool> publicConnectivity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  late final pulumi.Output<int> replicaCount;
  /// Key-value tags for the graph. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<GraphTimeouts?> timeouts;
  /// Vector Search Configuration (see below for nested schema of vector_search_configuration)
  late final pulumi.Output<GraphVectorSearchConfiguration?> vectorSearchConfiguration;

  /// Creates a new [Graph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Graph]. {@macro pulumi_neptunegraph_graph_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Graph(
    String name, {
    GraphArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptunegraph/graph:Graph',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtection = registerOutput<bool>('deletionProtection');
    endpoint = registerOutput<String>('endpoint');
    graphName = registerOutput<String>('graphName');
    graphNamePrefix = registerOutput<String?>('graphNamePrefix');
    kmsKeyIdentifier = registerOutput<String>('kmsKeyIdentifier');
    provisionedMemory = registerOutput<int>('provisionedMemory');
    publicConnectivity = registerOutput<bool>('publicConnectivity');
    region = registerOutput<String>('region');
    replicaCount = registerOutput<int>('replicaCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<GraphTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vectorSearchConfiguration = registerOutput<GraphVectorSearchConfiguration?>('vectorSearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphVectorSearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Graph] resource's state with the given [name] and [id].
  static Graph get(
    String name,
    pulumi.Input<String> id, {
    GraphState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Graph._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Graph._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptunegraph/graph:Graph',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deletionProtection = registerOutput<bool>('deletionProtection');
    endpoint = registerOutput<String>('endpoint');
    graphName = registerOutput<String>('graphName');
    graphNamePrefix = registerOutput<String?>('graphNamePrefix');
    kmsKeyIdentifier = registerOutput<String>('kmsKeyIdentifier');
    provisionedMemory = registerOutput<int>('provisionedMemory');
    publicConnectivity = registerOutput<bool>('publicConnectivity');
    region = registerOutput<String>('region');
    replicaCount = registerOutput<int>('replicaCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<GraphTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vectorSearchConfiguration = registerOutput<GraphVectorSearchConfiguration?>('vectorSearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphVectorSearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Graph] resource.
  Graph.reference(String urn)
    : super(
        'aws:neptunegraph/graph:Graph',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    deletionProtection = registerOutput<bool>('deletionProtection');
    endpoint = registerOutput<String>('endpoint');
    graphName = registerOutput<String>('graphName');
    graphNamePrefix = registerOutput<String?>('graphNamePrefix');
    kmsKeyIdentifier = registerOutput<String>('kmsKeyIdentifier');
    provisionedMemory = registerOutput<int>('provisionedMemory');
    publicConnectivity = registerOutput<bool>('publicConnectivity');
    region = registerOutput<String>('region');
    replicaCount = registerOutput<int>('replicaCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<GraphTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vectorSearchConfiguration = registerOutput<GraphVectorSearchConfiguration?>('vectorSearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphVectorSearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
