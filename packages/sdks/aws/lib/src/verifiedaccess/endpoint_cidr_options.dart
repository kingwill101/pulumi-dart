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
      'portRanges':
          pulumi.Input.mapInputValue<
            List<EndpointCidrOptionsPortRange>,
            List<Map<String, dynamic>>
          >(
            portRanges,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointCidrOptionsPortRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protocol': ?protocol,
      'subnetIds': ?subnetIds,
    };
  }

  factory EndpointCidrOptions.fromMap(Map<String, dynamic> map) {
    return EndpointCidrOptions(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      portRanges: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EndpointCidrOptionsPortRange>(
          map['portRanges']!,
          (value) => EndpointCidrOptionsPortRange.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetIds: (() {
        final guardedValue = map['subnetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
