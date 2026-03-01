// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_path_filter_at_destination.dart';
import 'network_insights_path_filter_at_source.dart';

/// Input properties used for looking up and filtering NetworkInsightsPath resources.
class NetworkInsightsPathState {
  /// ARN of the Network Insights Path.
  final pulumi.Input<String>? arn;
  /// ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the `destination` argument or the `destination_address` argument in the `filter_at_source` block must be specified.
  final pulumi.Input<String>? destination;
  /// ARN of the destination.
  final pulumi.Input<String>? destinationArn;
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
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID or ARN of the resource which is the source of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN.
  final pulumi.Input<String>? source;
  /// ARN of the source.
  final pulumi.Input<String>? sourceArn;
  /// IP address of the source resource.
  final pulumi.Input<String>? sourceIp;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [NetworkInsightsPathState].
  /// [arn] ARN of the Network Insights Path.
  /// [destination] ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the `destination` argument or the `destination_address` argument in the `filter_at_source` block must be specified.
  /// [destinationArn] ARN of the destination.
  /// [destinationIp] IP address of the destination resource.
  /// [destinationPort] Destination port to analyze access to.
  /// [filterAtDestination] Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify `destination_ip`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  /// [filterAtSource] Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify `source_ip` or `destination_port`. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  /// [protocol] Protocol to use for analysis. Valid options are `tcp` or `udp`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] ID or ARN of the resource which is the source of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN.
  /// [sourceArn] ARN of the source.
  /// [sourceIp] IP address of the source resource.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  NetworkInsightsPathState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? destination,
    pulumi.Output<String>? destinationArn,
    pulumi.Output<String>? destinationIp,
    pulumi.Output<int>? destinationPort,
    pulumi.Output<NetworkInsightsPathFilterAtDestination>? filterAtDestination,
    pulumi.Output<NetworkInsightsPathFilterAtSource>? filterAtSource,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? source,
    pulumi.Output<String>? sourceArn,
    pulumi.Output<String>? sourceIp,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      destinationArn = pulumi.Input.asOptionalInput<String>(destinationArn),
      destinationIp = pulumi.Input.asOptionalInput<String>(destinationIp),
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      filterAtDestination = pulumi.Input.asOptionalInput<NetworkInsightsPathFilterAtDestination>(filterAtDestination),
      filterAtSource = pulumi.Input.asOptionalInput<NetworkInsightsPathFilterAtSource>(filterAtSource),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceArn = pulumi.Input.asOptionalInput<String>(sourceArn),
      sourceIp = pulumi.Input.asOptionalInput<String>(sourceIp),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destination': ?destination,
      'destinationArn': ?destinationArn,
      'destinationIp': ?destinationIp,
      'destinationPort': ?destinationPort,
      'filterAtDestination': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtDestination, Map<String, dynamic>>(filterAtDestination, (value) => value.toMap()),
      'filterAtSource': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtSource, Map<String, dynamic>>(filterAtSource, (value) => value.toMap()),
      'protocol': ?protocol,
      'region': ?region,
      'source': ?source,
      'sourceArn': ?sourceArn,
      'sourceIp': ?sourceIp,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory NetworkInsightsPathState.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      destinationArn: map['destinationArn'] == null ? null : pulumi.Output.create<String>(map['destinationArn'] as String),
      destinationIp: map['destinationIp'] == null ? null : pulumi.Output.create<String>(map['destinationIp'] as String),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<int>(map['destinationPort'] as int),
      filterAtDestination: map['filterAtDestination'] == null ? null : pulumi.Output.create<NetworkInsightsPathFilterAtDestination>(NetworkInsightsPathFilterAtDestination.fromMap((map['filterAtDestination'] as Map).cast<String, dynamic>())),
      filterAtSource: map['filterAtSource'] == null ? null : pulumi.Output.create<NetworkInsightsPathFilterAtSource>(NetworkInsightsPathFilterAtSource.fromMap((map['filterAtSource'] as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceArn: map['sourceArn'] == null ? null : pulumi.Output.create<String>(map['sourceArn'] as String),
      sourceIp: map['sourceIp'] == null ? null : pulumi.Output.create<String>(map['sourceIp'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

