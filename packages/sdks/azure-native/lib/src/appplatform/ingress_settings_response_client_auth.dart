// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client-Certification Authentication.
class IngressSettingsResponseClientAuth {
  /// Collection of certificate resource id.
  final pulumi.Input<List<String>?>? certificates;

  /// Creates a new [IngressSettingsResponseClientAuth].
  /// [certificates] Collection of certificate resource id.
  const IngressSettingsResponseClientAuth({
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
    };
  }

  factory IngressSettingsResponseClientAuth.fromMap(Map<String, dynamic> map) {
    return IngressSettingsResponseClientAuth(
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
