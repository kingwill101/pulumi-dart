// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_path_filter_at_destination.dart';
import 'network_insights_path_filter_at_source.dart';

/// {@template pulumi_ec2_network_insights_path_network_insights_path_args_doc}
/// The set of arguments for NetworkInsightsPath.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_insights_path_network_insights_path_args_doc}
class NetworkInsightsPathArgs {
  /// ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the `destination` argument or the `destination_address` argument in the `filter_at_source` block must be specified.
  final pulumi.Input<String>? destination;
  /// IP address of the destination resource.
  final pulumi.Input<String>? destinationIp;
  /// Destination port to analyze access to.
  final pulumi.Input<int>? destinationPort;
  /// Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify `destination_ip`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  final pulumi.Input<NetworkInsightsPathFilterAtDestination>? filterAtDestination;
  /// Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify `source_ip` or `destination_port`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  final pulumi.Input<NetworkInsightsPathFilterAtSource>? filterAtSource;
  /// Protocol to use for analysis. Valid options are `tcp` or `udp`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID or ARN of the resource which is the source of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN.
  final pulumi.Input<String> source;
  /// IP address of the source resource.
  final pulumi.Input<String>? sourceIp;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkInsightsPathArgs].
  /// [destination] ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the `destination` argument or the `destination_address` argument in the `filter_at_source` block must be specified.
  /// [destinationIp] IP address of the destination resource.
  /// [destinationPort] Destination port to analyze access to.
  /// [filterAtDestination] Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify `destination_ip`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  /// [filterAtSource] Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify `source_ip` or `destination_port`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  /// [protocol] Protocol to use for analysis. Valid options are `tcp` or `udp`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] ID or ARN of the resource which is the source of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN.
  /// [sourceIp] IP address of the source resource.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  NetworkInsightsPathArgs({
    pulumi.Output<String>? destination,
    pulumi.Output<String>? destinationIp,
    pulumi.Output<int>? destinationPort,
    pulumi.Output<NetworkInsightsPathFilterAtDestination>? filterAtDestination,
    pulumi.Output<NetworkInsightsPathFilterAtSource>? filterAtSource,
    required pulumi.Output<String> protocol,
    pulumi.Output<String>? region,
    required pulumi.Output<String> source,
    pulumi.Output<String>? sourceIp,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      destination = pulumi.Input.asOptionalInput<String>(destination),
      destinationIp = pulumi.Input.asOptionalInput<String>(destinationIp),
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      filterAtDestination = pulumi.Input.asOptionalInput<NetworkInsightsPathFilterAtDestination>(filterAtDestination),
      filterAtSource = pulumi.Input.asOptionalInput<NetworkInsightsPathFilterAtSource>(filterAtSource),
      protocol = pulumi.Input.asInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asInput<String>(source),
      sourceIp = pulumi.Input.asOptionalInput<String>(sourceIp),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'destinationIp': ?destinationIp,
      'destinationPort': ?destinationPort,
      'filterAtDestination': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtDestination, Map<String, dynamic>>(filterAtDestination, (value) => value.toMap()),
      'filterAtSource': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtSource, Map<String, dynamic>>(filterAtSource, (value) => value.toMap()),
      'protocol': protocol,
      'region': ?region,
      'source': source,
      'sourceIp': ?sourceIp,
      'tags': ?tags,
    };
  }

  factory NetworkInsightsPathArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathArgs(
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      destinationIp: map['destinationIp'] == null ? null : pulumi.Output.create<String>(map['destinationIp'] as String),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<int>(map['destinationPort'] as int),
      filterAtDestination: map['filterAtDestination'] == null ? null : pulumi.Output.create<NetworkInsightsPathFilterAtDestination>(NetworkInsightsPathFilterAtDestination.fromMap((map['filterAtDestination'] as Map).cast<String, dynamic>())),
      filterAtSource: map['filterAtSource'] == null ? null : pulumi.Output.create<NetworkInsightsPathFilterAtSource>(NetworkInsightsPathFilterAtSource.fromMap((map['filterAtSource'] as Map).cast<String, dynamic>())),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      source: pulumi.Output.create<String>(map['source'] as String),
      sourceIp: map['sourceIp'] == null ? null : pulumi.Output.create<String>(map['sourceIp'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

