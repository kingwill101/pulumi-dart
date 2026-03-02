// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client-Certification Authentication.
class IngressSettingsResponseClientAuth {
  /// Collection of certificate resource id.
  final pulumi.Input<List<String>>? certificates;

  /// Creates a new [IngressSettingsResponseClientAuth].
  /// [certificates] Collection of certificate resource id.
  IngressSettingsResponseClientAuth({
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
    };
  }

  factory IngressSettingsResponseClientAuth.fromMap(Map<String, dynamic> map) {
    return IngressSettingsResponseClientAuth(
      certificates: map['certificates'] == null ? null : ((map['certificates']! as List).cast<String>()).input(),
    );
  }
}

