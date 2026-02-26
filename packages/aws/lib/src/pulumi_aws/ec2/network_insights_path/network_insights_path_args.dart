// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_insights_path_filter_at_destination/network_insights_path_filter_at_destination.dart';
import '../network_insights_path_filter_at_source/network_insights_path_filter_at_source.dart';

/// The set of arguments for NetworkInsightsPath.
class NetworkInsightsPathArgs {
  /// ID or ARN of the resource which is the destination of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN. Either the <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> argument or the <span pulumi-lang-nodejs="`destinationAddress`" pulumi-lang-dotnet="`DestinationAddress`" pulumi-lang-go="`destinationAddress`" pulumi-lang-python="`destination_address`" pulumi-lang-yaml="`destinationAddress`" pulumi-lang-java="`destinationAddress`">`destination_address`</span> argument in the <span pulumi-lang-nodejs="`filterAtSource`" pulumi-lang-dotnet="`FilterAtSource`" pulumi-lang-go="`filterAtSource`" pulumi-lang-python="`filter_at_source`" pulumi-lang-yaml="`filterAtSource`" pulumi-lang-java="`filterAtSource`">`filter_at_source`</span> block must be specified.
  final Input<String>? destination;

  /// IP address of the destination resource.
  final Input<String>? destinationIp;

  /// Destination port to analyze access to.
  final Input<int>? destinationPort;

  /// Scopes the analysis to network paths that match specific filters at the destination. If you specify this parameter, you can't specify <span pulumi-lang-nodejs="`destinationIp`" pulumi-lang-dotnet="`DestinationIp`" pulumi-lang-go="`destinationIp`" pulumi-lang-python="`destination_ip`" pulumi-lang-yaml="`destinationIp`" pulumi-lang-java="`destinationIp`">`destination_ip`</span>. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  final Input<NetworkInsightsPathFilterAtDestination>? filterAtDestination;

  /// Scopes the analysis to network paths that match specific filters at the source. If you specify this parameter, you can't specify <span pulumi-lang-nodejs="`sourceIp`" pulumi-lang-dotnet="`SourceIp`" pulumi-lang-go="`sourceIp`" pulumi-lang-python="`source_ip`" pulumi-lang-yaml="`sourceIp`" pulumi-lang-java="`sourceIp`">`source_ip`</span> or <span pulumi-lang-nodejs="`destinationPort`" pulumi-lang-dotnet="`DestinationPort`" pulumi-lang-go="`destinationPort`" pulumi-lang-python="`destination_port`" pulumi-lang-yaml="`destinationPort`" pulumi-lang-java="`destinationPort`">`destination_port`</span>. See below for details. Note that Terraform performs drift detection on this argument only when the value is provided.
  final Input<NetworkInsightsPathFilterAtSource>? filterAtSource;

  /// Protocol to use for analysis. Valid options are <span pulumi-lang-nodejs="`tcp`" pulumi-lang-dotnet="`Tcp`" pulumi-lang-go="`tcp`" pulumi-lang-python="`tcp`" pulumi-lang-yaml="`tcp`" pulumi-lang-java="`tcp`">`tcp`</span> or <span pulumi-lang-nodejs="`udp`" pulumi-lang-dotnet="`Udp`" pulumi-lang-go="`udp`" pulumi-lang-python="`udp`" pulumi-lang-yaml="`udp`" pulumi-lang-java="`udp`">`udp`</span>.
  ///
  /// The following arguments are optional:
  final Input<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID or ARN of the resource which is the source of the path. Can be an Instance, Internet Gateway, Network Interface, Transit Gateway, VPC Endpoint, VPC Peering Connection or VPN Gateway. If the resource is in another account, you must specify an ARN.
  final Input<String> source;

  /// IP address of the source resource.
  final Input<String>? sourceIp;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['filterAtDestination'] = Input.mapOptionalInputValue<
              NetworkInsightsPathFilterAtDestination, Map<String, dynamic>>(
          filterAtDestinationValue, (value) => value.toMap());
    }
    final filterAtSourceValue = filterAtSource;
    if (filterAtSourceValue != null) {
      map['filterAtSource'] = Input.mapOptionalInputValue<
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
      destination: Input.asOptionalInput<String>(map['destination']),
      destinationIp: Input.asOptionalInput<String>(map['destinationIp']),
      destinationPort: Input.asOptionalInput<int>(map['destinationPort']),
      filterAtDestination:
          Input.asOptionalInput<NetworkInsightsPathFilterAtDestination>(
              map['filterAtDestination']),
      filterAtSource: Input.asOptionalInput<NetworkInsightsPathFilterAtSource>(
          map['filterAtSource']),
      protocol: Input.asInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      source: Input.asInput<String>(map['source']),
      sourceIp: Input.asOptionalInput<String>(map['sourceIp']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
