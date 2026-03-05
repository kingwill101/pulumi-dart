import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_endpoint_args.dart';
import 'cluster_endpoint_state.dart';

/// Provides an Neptune Cluster Endpoint Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.neptune.ClusterEndpoint("example", {
///     clusterIdentifier: test.clusterIdentifier,
///     clusterEndpointIdentifier: "example",
///     endpointType: "READER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.ClusterEndpoint("example",
///     cluster_identifier=test["clusterIdentifier"],
///     cluster_endpoint_identifier="example",
///     endpoint_type="READER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Neptune.ClusterEndpoint("example", new()
///     {
///         ClusterIdentifier = test.ClusterIdentifier,
///         ClusterEndpointIdentifier = "example",
///         EndpointType = "READER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := neptune.NewClusterEndpoint(ctx, "example", &neptune.ClusterEndpointArgs{
/// 			ClusterIdentifier:         pulumi.Any(test.ClusterIdentifier),
/// 			ClusterEndpointIdentifier: pulumi.String("example"),
/// 			EndpointType:              pulumi.String("READER"),
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
/// import com.pulumi.aws.neptune.ClusterEndpoint;
/// import com.pulumi.aws.neptune.ClusterEndpointArgs;
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
///         var example = new ClusterEndpoint("example", ClusterEndpointArgs.builder()
///             .clusterIdentifier(test.clusterIdentifier())
///             .clusterEndpointIdentifier("example")
///             .endpointType("READER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:neptune:ClusterEndpoint
///     properties:
///       clusterIdentifier: ${test.clusterIdentifier}
///       clusterEndpointIdentifier: example
///       endpointType: READER
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.ClusterEndpoint` using the `cluster-identifier:endpoint-identfier`. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterEndpoint:ClusterEndpoint example my-cluster:my-endpoint
/// ```
class ClusterEndpoint extends pulumi.CustomResource {
  /// The Neptune Cluster Endpoint Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;
  /// The identifier of the endpoint.
  late final pulumi.Output<String> clusterEndpointIdentifier;
  /// The DB cluster identifier of the DB cluster associated with the endpoint.
  late final pulumi.Output<String> clusterIdentifier;
  /// The DNS address of the endpoint.
  late final pulumi.Output<String> endpoint;
  /// The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
  late final pulumi.Output<String> endpointType;
  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
  late final pulumi.Output<List<String>?> excludedMembers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of DB instance identifiers that are part of the custom endpoint group.
  late final pulumi.Output<List<String>?> staticMembers;
  /// A map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ClusterEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterEndpoint]. {@macro pulumi_neptune_cluster_endpoint_cluster_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterEndpoint(
    String name, {
    ClusterEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterEndpointIdentifier = registerOutput<String>('clusterEndpointIdentifier');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    endpoint = registerOutput<String>('endpoint');
    endpointType = registerOutput<String>('endpointType');
    excludedMembers = registerOutput<List<String>?>('excludedMembers');
    region = registerOutput<String>('region');
    staticMembers = registerOutput<List<String>?>('staticMembers');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ClusterEndpoint] resource's state with the given [name] and [id].
  static ClusterEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ClusterEndpointState? state,
  }) {
    return ClusterEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterEndpointIdentifier = registerOutput<String>('clusterEndpointIdentifier');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    endpoint = registerOutput<String>('endpoint');
    endpointType = registerOutput<String>('endpointType');
    excludedMembers = registerOutput<List<String>?>('excludedMembers');
    region = registerOutput<String>('region');
    staticMembers = registerOutput<List<String>?>('staticMembers');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
