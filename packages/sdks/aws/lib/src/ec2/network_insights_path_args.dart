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
    this.destination,
    this.destinationIp,
    this.destinationPort,
    this.filterAtDestination,
    this.filterAtSource,
    required this.protocol,
    this.region,
    required this.source,
    this.sourceIp,
    this.tags,
  });

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
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationIp: (() { final guardedValue = map['destinationIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      filterAtDestination: (() { final guardedValue = map['filterAtDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsPathFilterAtDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterAtSource: (() { final guardedValue = map['filterAtSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsPathFilterAtSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceIp: (() { final guardedValue = map['sourceIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

