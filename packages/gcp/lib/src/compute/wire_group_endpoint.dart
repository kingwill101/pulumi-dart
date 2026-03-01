// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_endpoint_interconnect.dart';

class WireGroupEndpoint {
  /// The identifier for this object. Format specified above.
  final String endpoint;
  /// Structure is documented below.
  final List<WireGroupEndpointInterconnect>? interconnects;

  /// Creates a new [WireGroupEndpoint].
  /// [endpoint] The identifier for this object. Format specified above.
  /// [interconnects] Structure is documented below.
  WireGroupEndpoint({
    required this.endpoint,
    this.interconnects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'interconnects': ?interconnects == null ? null : pulumi.Input.encodeList<WireGroupEndpointInterconnect, Map<String, dynamic>>(interconnects!, (value) => value.toMap()),
    };
  }

  factory WireGroupEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupEndpoint(
      endpoint: map['endpoint'] as String,
      interconnects: map['interconnects'] == null ? null : pulumi.Input.decodeList<WireGroupEndpointInterconnect>(map['interconnects'], (value) => WireGroupEndpointInterconnect.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

