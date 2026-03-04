// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MeshSpecServiceDiscovery {
  /// The IP version to use to control traffic within the mesh. Valid values are `IPv6_PREFERRED`, `IPv4_PREFERRED`, `IPv4_ONLY`, and `IPv6_ONLY`.
  final pulumi.Input<String>? ipPreference;

  /// Creates a new [MeshSpecServiceDiscovery].
  /// [ipPreference] The IP version to use to control traffic within the mesh. Valid values are `IPv6_PREFERRED`, `IPv4_PREFERRED`, `IPv4_ONLY`, and `IPv6_ONLY`.
  MeshSpecServiceDiscovery({this.ipPreference});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipPreference': ?ipPreference};
  }

  factory MeshSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return MeshSpecServiceDiscovery(
      ipPreference: (() {
        final guardedValue = map['ipPreference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
