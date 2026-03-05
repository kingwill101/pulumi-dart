// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMeshSpecServiceDiscovery {
  final pulumi.Input<String> ipPreference;

  /// Creates a new [GetMeshSpecServiceDiscovery].
  /// [ipPreference] Required.
  GetMeshSpecServiceDiscovery({
    required this.ipPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPreference': ipPreference,
    };
  }

  factory GetMeshSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetMeshSpecServiceDiscovery(
      ipPreference: pulumi.Input.fromValue(map['ipPreference'] as String),
    );
  }
}

