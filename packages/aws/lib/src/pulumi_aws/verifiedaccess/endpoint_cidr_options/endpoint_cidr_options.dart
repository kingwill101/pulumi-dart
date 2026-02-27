// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_cidr_options_port_range/endpoint_cidr_options_port_range.dart';

class EndpointCidrOptions {
  final String cidr;
  final List<EndpointCidrOptionsPortRange> portRanges;
  final String? protocol;
  final List<String>? subnetIds;

  EndpointCidrOptions({
    required this.cidr,
    required this.portRanges,
    this.protocol,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    map['portRanges'] = pulumi.Input.encodeList<EndpointCidrOptionsPortRange,
        Map<String, dynamic>>(portRanges, (value) => value.toMap());
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    return map;
  }

  factory EndpointCidrOptions.fromMap(Map<String, dynamic> map) {
    return EndpointCidrOptions(
      cidr: map['cidr'] as String,
      portRanges: pulumi.Input.decodeList<EndpointCidrOptionsPortRange>(
          map['portRanges'],
          (value) => EndpointCidrOptionsPortRange.fromMap(
              (value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
    );
  }
}
