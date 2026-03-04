// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecServiceDiscoveryDn {
  final pulumi.Input<String> hostname;
  final pulumi.Input<String> ipPreference;
  final pulumi.Input<String> responseType;

  /// Creates a new [GetVirtualNodeSpecServiceDiscoveryDn].
  /// [hostname] Required.
  /// [ipPreference] Required.
  /// [responseType] Required.
  GetVirtualNodeSpecServiceDiscoveryDn({
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

  factory GetVirtualNodeSpecServiceDiscoveryDn.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecServiceDiscoveryDn(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ipPreference: pulumi.Input.fromValue(map['ipPreference'] as String),
      responseType: pulumi.Input.fromValue(map['responseType'] as String),
    );
  }
}
