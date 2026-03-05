// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the connection monitor endpoint filter item.
class ConnectionMonitorEndpointFilterItemResponse {
  /// The address of the filter item.
  final pulumi.Input<String>? address;
  /// The type of item included in the filter. Currently only 'AgentAddress' is supported.
  final pulumi.Input<String>? type;

  /// Creates a new [ConnectionMonitorEndpointFilterItemResponse].
  /// [address] The address of the filter item.
  /// [type] The type of item included in the filter. Currently only 'AgentAddress' is supported.
  ConnectionMonitorEndpointFilterItemResponse({
    this.address,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpointFilterItemResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointFilterItemResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

