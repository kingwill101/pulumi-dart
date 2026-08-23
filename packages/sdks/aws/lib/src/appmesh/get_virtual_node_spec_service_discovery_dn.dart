// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecServiceDiscoveryDn {
  /// DNS host name for your virtual node.
  final pulumi.Input<String> hostname;
  /// Preferred IP version that this virtual node uses.
  final pulumi.Input<String> ipPreference;
  /// DNS response type for the virtual node.
  final pulumi.Input<String> responseType;

  /// Creates a new [GetVirtualNodeSpecServiceDiscoveryDn].
  /// [hostname] DNS host name for your virtual node.
  /// [ipPreference] Preferred IP version that this virtual node uses.
  /// [responseType] DNS response type for the virtual node.
  const GetVirtualNodeSpecServiceDiscoveryDn({
    required this.hostname,
    required this.ipPreference,
    required this.responseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'ipPreference': ipPreference,
      'responseType': responseType,
    };
  }

  factory GetVirtualNodeSpecServiceDiscoveryDn.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecServiceDiscoveryDn(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ipPreference: pulumi.Input.fromValue(map['ipPreference'] as String),
      responseType: pulumi.Input.fromValue(map['responseType'] as String),
    );
  }
}
