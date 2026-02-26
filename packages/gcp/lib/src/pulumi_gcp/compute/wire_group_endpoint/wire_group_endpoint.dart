// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../wire_group_endpoint_interconnect/wire_group_endpoint_interconnect.dart';

class WireGroupEndpoint {
  /// The identifier for this object. Format specified above.
  final String endpoint;

  /// Structure is documented below.
  final List<WireGroupEndpointInterconnect>? interconnects;

  WireGroupEndpoint({
    required this.endpoint,
    this.interconnects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoint'] = endpoint;
    final interconnectsValue = interconnects;
    if (interconnectsValue != null) {
      map['interconnects'] =
          Input.encodeList<WireGroupEndpointInterconnect, Map<String, dynamic>>(
              interconnectsValue, (value) => value.toMap());
    }
    return map;
  }

  factory WireGroupEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupEndpoint(
      endpoint: map['endpoint'] as String,
      interconnects: map['interconnects'] == null
          ? null
          : Input.decodeList<WireGroupEndpointInterconnect>(
              map['interconnects'],
              (value) => WireGroupEndpointInterconnect.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
