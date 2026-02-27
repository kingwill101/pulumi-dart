import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_insights_path_filter_at_destination/network_insights_path_filter_at_destination.dart';
import '../network_insights_path_filter_at_source/network_insights_path_filter_at_source.dart';
import 'network_insights_path_args.dart';

/// Provides a Network Insights Path resource. Part of the "Reachability Analyzer" service in the AWS VPC console.
///
/// ## Example Usage
///
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

  /// ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the `destination` argument or the `destination_address` argument in the `filter_at_source` block must be specified.
  late final pulumi.Output<String?> destination;

  /// ARN of the destination.
  late final pulumi.Output<String> destinationArn;

  /// IP address of the destination resource.
  late final pulumi.Output<String?> destinationIp;

  /// Destination port to analyze access to.
  late final pulumi.Output<int?> destinationPort;

  /// Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify `destination_ip`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  late final pulumi.Output<NetworkInsightsPathFilterAtDestination>
      filterAtDestination;

  /// Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify `source_ip` or `destination_port`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
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

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  NetworkInsightsPath(
    String name, {
    NetworkInsightsPathArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsPath:NetworkInsightsPath',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
