import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_path_args.dart';
import 'network_insights_path_filter_at_destination.dart';
import 'network_insights_path_filter_at_source.dart';
import 'network_insights_path_state.dart';

/// Provides a Network Insights Path resource. Part of the "Reachability Analyzer" service in the AWS VPC console.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.NetworkInsightsPath("test", {
///     source: source.id,
///     destination: destination.id,
///     protocol: "tcp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.NetworkInsightsPath("test",
///     source=source["id"],
///     destination=destination["id"],
///     protocol="tcp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ec2.NetworkInsightsPath("test", new()
///     {
///         Source = source.Id,
///         Destination = destination.Id,
///         Protocol = "tcp",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewNetworkInsightsPath(ctx, "test", &ec2.NetworkInsightsPathArgs{
/// 			Source:      pulumi.Any(source.Id),
/// 			Destination: pulumi.Any(destination.Id),
/// 			Protocol:    pulumi.String("tcp"),
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
/// resource "aws_ec2_networkinsightspath" "test" {
///   source      = source.id
///   destination = destination.id
///   protocol    = "tcp"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NetworkInsightsPath;
/// import com.pulumi.aws.ec2.NetworkInsightsPathArgs;
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
///         var test = new NetworkInsightsPath("test", NetworkInsightsPathArgs.builder()
///             .source(source.id())
///             .destination(destination.id())
///             .protocol("tcp")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:NetworkInsightsPath
///     properties:
///       source: ${source.id}
///       destination: ${destination.id}
///       protocol: tcp
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Insights Paths using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInsightsPath:NetworkInsightsPath test nip-00edfba169923aefd
/// ```
class NetworkInsightsPath extends pulumi.CustomResource {
  /// ARN of the Network Insights Path.
  late final pulumi.Output<String> arn;
  /// ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the `destination` argument or the `destinationAddress` argument in the `filterAtSource` block must be specified.
  late final pulumi.Output<String?> destination;
  /// ARN of the destination.
  late final pulumi.Output<String> destinationArn;
  /// IP address of the destination resource.
  late final pulumi.Output<String?> destinationIp;
  /// Destination port to analyze access to.
  late final pulumi.Output<int?> destinationPort;
  /// Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify `destinationIp`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  late final pulumi.Output<NetworkInsightsPathFilterAtDestination> filterAtDestination;
  /// Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify `sourceIp` or `destinationPort`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  late final pulumi.Output<NetworkInsightsPathFilterAtSource> filterAtSource;
  /// Protocol to use for analysis. Valid options are `tcp` or `udp`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID or ARN of the resource which is the source of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN.
  late final pulumi.Output<String> source;
  /// ARN of the source.
  late final pulumi.Output<String> sourceArn;
  /// IP address of the source resource.
  late final pulumi.Output<String?> sourceIp;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [NetworkInsightsPath].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInsightsPath]. {@macro pulumi_ec2_network_insights_path_network_insights_path_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInsightsPath(
    String name, {
    NetworkInsightsPathArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsPath:NetworkInsightsPath',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    destination = registerOutput<String?>('destination');
    destinationArn = registerOutput<String>('destinationArn');
    destinationIp = registerOutput<String?>('destinationIp');
    destinationPort = registerOutput<int?>('destinationPort');
    filterAtDestination = registerOutput<NetworkInsightsPathFilterAtDestination>('filterAtDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkInsightsPathFilterAtDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filterAtSource = registerOutput<NetworkInsightsPathFilterAtSource>('filterAtSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkInsightsPathFilterAtSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    source = registerOutput<String>('source');
    sourceArn = registerOutput<String>('sourceArn');
    sourceIp = registerOutput<String?>('sourceIp');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [NetworkInsightsPath] resource's state with the given [name] and [id].
  static NetworkInsightsPath get(
    String name,
    pulumi.Input<String> id, {
    NetworkInsightsPathState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkInsightsPath._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkInsightsPath._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsPath:NetworkInsightsPath',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destination = registerOutput<String?>('destination');
    destinationArn = registerOutput<String>('destinationArn');
    destinationIp = registerOutput<String?>('destinationIp');
    destinationPort = registerOutput<int?>('destinationPort');
    filterAtDestination = registerOutput<NetworkInsightsPathFilterAtDestination>('filterAtDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkInsightsPathFilterAtDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filterAtSource = registerOutput<NetworkInsightsPathFilterAtSource>('filterAtSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkInsightsPathFilterAtSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    source = registerOutput<String>('source');
    sourceArn = registerOutput<String>('sourceArn');
    sourceIp = registerOutput<String?>('sourceIp');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [NetworkInsightsPath] resource.
  NetworkInsightsPath.reference(String urn)
    : super(
        'aws:ec2/networkInsightsPath:NetworkInsightsPath',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    destination = registerOutput<String?>('destination');
    destinationArn = registerOutput<String>('destinationArn');
    destinationIp = registerOutput<String?>('destinationIp');
    destinationPort = registerOutput<int?>('destinationPort');
    filterAtDestination = registerOutput<NetworkInsightsPathFilterAtDestination>('filterAtDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkInsightsPathFilterAtDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filterAtSource = registerOutput<NetworkInsightsPathFilterAtSource>('filterAtSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkInsightsPathFilterAtSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    source = registerOutput<String>('source');
    sourceArn = registerOutput<String>('sourceArn');
    sourceIp = registerOutput<String?>('sourceIp');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
