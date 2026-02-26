import 'package:pulumi/pulumi.dart';
import '../network_insights_path_filter_at_destination/network_insights_path_filter_at_destination.dart';
import '../network_insights_path_filter_at_source/network_insights_path_filter_at_source.dart';
import 'network_insights_path_args.dart';

/// Provides a Network Insights Path resource. Part of the "Reachability Analyzer" service in the AWS VPC console.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.NetworkInsightsPath("test", {
/// source: source.id,
/// destination: destination.id,
/// protocol: "tcp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.NetworkInsightsPath("test",
/// source=source["id"],
/// destination=destination["id"],
/// protocol="tcp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ec2.NetworkInsightsPath("test", new()
/// {
/// Source = source.Id,
/// Destination = destination.Id,
/// Protocol = "tcp",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewNetworkInsightsPath(ctx, "test", &ec2.NetworkInsightsPathArgs{
/// Source:      pulumi.Any(source.Id),
/// Destination: pulumi.Any(destination.Id),
/// Protocol:    pulumi.String("tcp"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new NetworkInsightsPath("test", NetworkInsightsPathArgs.builder()
/// .source(source.id())
/// .destination(destination.id())
/// .protocol("tcp")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:NetworkInsightsPath
/// properties:
/// source: ${source.id}
/// destination: ${destination.id}
/// protocol: tcp
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Network Insights Paths using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInsightsPath:NetworkInsightsPath test nip-00edfba169923aefd
/// ```
class NetworkInsightsPath extends CustomResource {
  /// ARN of the Network Insights Path.
  late final Output<String> arn;

  /// ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> argument or the <span pulumi-lang-nodejs="`destinationAddress`" pulumi-lang-dotnet="`DestinationAddress`" pulumi-lang-go="`destinationAddress`" pulumi-lang-python="`destination_address`" pulumi-lang-yaml="`destinationAddress`" pulumi-lang-java="`destinationAddress`">`destination_address`</span> argument in the <span pulumi-lang-nodejs="`filterAtSource`" pulumi-lang-dotnet="`FilterAtSource`" pulumi-lang-go="`filterAtSource`" pulumi-lang-python="`filter_at_source`" pulumi-lang-yaml="`filterAtSource`" pulumi-lang-java="`filterAtSource`">`filter_at_source`</span> block must be specified.
  late final Output<String?> destination;

  /// ARN of the destination.
  late final Output<String> destinationArn;

  /// IP address of the destination resource.
  late final Output<String?> destinationIp;

  /// Destination port to analyze access to.
  late final Output<int?> destinationPort;

  /// Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify <span pulumi-lang-nodejs="`destinationIp`" pulumi-lang-dotnet="`DestinationIp`" pulumi-lang-go="`destinationIp`" pulumi-lang-python="`destination_ip`" pulumi-lang-yaml="`destinationIp`" pulumi-lang-java="`destinationIp`">`destination_ip`</span>. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  late final Output<NetworkInsightsPathFilterAtDestination> filterAtDestination;

  /// Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify <span pulumi-lang-nodejs="`sourceIp`" pulumi-lang-dotnet="`SourceIp`" pulumi-lang-go="`sourceIp`" pulumi-lang-python="`source_ip`" pulumi-lang-yaml="`sourceIp`" pulumi-lang-java="`sourceIp`">`source_ip`</span> or <span pulumi-lang-nodejs="`destinationPort`" pulumi-lang-dotnet="`DestinationPort`" pulumi-lang-go="`destinationPort`" pulumi-lang-python="`destination_port`" pulumi-lang-yaml="`destinationPort`" pulumi-lang-java="`destinationPort`">`destination_port`</span>. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  late final Output<NetworkInsightsPathFilterAtSource> filterAtSource;

  /// Protocol to use for analysis. Valid options are <span pulumi-lang-nodejs="`tcp`" pulumi-lang-dotnet="`Tcp`" pulumi-lang-go="`tcp`" pulumi-lang-python="`tcp`" pulumi-lang-yaml="`tcp`" pulumi-lang-java="`tcp`">`tcp`</span> or <span pulumi-lang-nodejs="`udp`" pulumi-lang-dotnet="`Udp`" pulumi-lang-go="`udp`" pulumi-lang-python="`udp`" pulumi-lang-yaml="`udp`" pulumi-lang-java="`udp`">`udp`</span>.
  ///
  /// The following arguments are optional:
  late final Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID or ARN of the resource which is the source of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN.
  late final Output<String> source;

  /// ARN of the source.
  late final Output<String> sourceArn;

  /// IP address of the source resource.
  late final Output<String?> sourceIp;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  NetworkInsightsPath(
    String name, {
    NetworkInsightsPathArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsPath:NetworkInsightsPath',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destination = registerOutput<String?>('destination');
    this.destinationArn = registerOutput<String>('destinationArn');
    this.destinationIp = registerOutput<String?>('destinationIp');
    this.destinationPort = registerOutput<int?>('destinationPort');
    this.filterAtDestination =
        registerOutput<NetworkInsightsPathFilterAtDestination>(
            'filterAtDestination');
    this.filterAtSource =
        registerOutput<NetworkInsightsPathFilterAtSource>('filterAtSource');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.source = registerOutput<String>('source');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.sourceIp = registerOutput<String?>('sourceIp');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
