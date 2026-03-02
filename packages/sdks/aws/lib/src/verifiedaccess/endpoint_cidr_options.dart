// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_cidr_options_port_range.dart';

class EndpointCidrOptions {
  final pulumi.Input<String> cidr;
  final pulumi.Input<List<EndpointCidrOptionsPortRange>> portRanges;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<List<String>>? subnetIds;

  /// Creates a new [EndpointCidrOptions].
  /// [cidr] Required.
  /// [portRanges] Required.
  /// [protocol] Optional.
  /// [subnetIds] Optional.
  EndpointCidrOptions({
    required this.cidr,
    required this.portRanges,
    this.protocol,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'portRanges': pulumi.Input.mapInputValue<List<EndpointCidrOptionsPortRange>, List<Map<String, dynamic>>>(portRanges, (value) => pulumi.Input.encodeList<EndpointCidrOptionsPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': ?protocol,
      'subnetIds': ?subnetIds,
    };
  }

  factory EndpointCidrOptions.fromMap(Map<String, dynamic> map) {
    return EndpointCidrOptions(
      cidr: (map['cidr'] as String).input(),
      portRanges: (pulumi.Input.decodeList<EndpointCidrOptionsPortRange>(map['portRanges']!, (value) => EndpointCidrOptionsPortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
    );
  }
}

