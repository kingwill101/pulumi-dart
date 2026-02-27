// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_insights_path_filter_at_destination/network_insights_path_filter_at_destination.dart';
import '../network_insights_path_filter_at_source/network_insights_path_filter_at_source.dart';

/// The set of arguments for NetworkInsightsPath.
class NetworkInsightsPathArgs {
  /// ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the `destination` argument or the `destination_address` argument in the `filter_at_source` block must be specified.
  final pulumi.Input<String>? destination;

  /// IP address of the destination resource.
  final pulumi.Input<String>? destinationIp;

  /// Destination port to analyze access to.
  final pulumi.Input<int>? destinationPort;

  /// Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify `destination_ip`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  final pulumi.Input<NetworkInsightsPathFilterAtDestination>?
      filterAtDestination;

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
    final map = <String, dynamic>{};
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue;
    }
    final destinationIpValue = destinationIp;
    if (destinationIpValue != null) {
      map['destinationIp'] = destinationIpValue;
    }
    final destinationPortValue = destinationPort;
    if (destinationPortValue != null) {
      map['destinationPort'] = destinationPortValue;
    }
    final filterAtDestinationValue = filterAtDestination;
    if (filterAtDestinationValue != null) {
      map['filterAtDestination'] = pulumi.Input.mapOptionalInputValue<
              NetworkInsightsPathFilterAtDestination, Map<String, dynamic>>(
          filterAtDestinationValue, (value) => value.toMap());
    }
    final filterAtSourceValue = filterAtSource;
    if (filterAtSourceValue != null) {
      map['filterAtSource'] = pulumi.Input.mapOptionalInputValue<
          NetworkInsightsPathFilterAtSource,
          Map<String, dynamic>>(filterAtSourceValue, (value) => value.toMap());
    }
    map['protocol'] = protocol;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['source'] = source;
    final sourceIpValue = sourceIp;
    if (sourceIpValue != null) {
      map['sourceIp'] = sourceIpValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NetworkInsightsPathArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathArgs(
      destination: pulumi.Input.asOptionalInput<String>(map['destination']),
      destinationIp: pulumi.Input.asOptionalInput<String>(map['destinationIp']),
      destinationPort:
          pulumi.Input.asOptionalInput<int>(map['destinationPort']),
      filterAtDestination:
          pulumi.Input.asOptionalInput<NetworkInsightsPathFilterAtDestination>(
              map['filterAtDestination']),
      filterAtSource:
          pulumi.Input.asOptionalInput<NetworkInsightsPathFilterAtSource>(
              map['filterAtSource']),
      protocol: pulumi.Input.asInput<String>(map['protocol']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      source: pulumi.Input.asInput<String>(map['source']),
      sourceIp: pulumi.Input.asOptionalInput<String>(map['sourceIp']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
