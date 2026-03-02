// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Client-Certification Authentication.
class IngressSettingsClientAuth {
  /// Collection of certificate resource id.
  final pulumi.Input<List<String>>? certificates;

  /// Creates a new [IngressSettingsClientAuth].
  /// [certificates] Collection of certificate resource id.
  IngressSettingsClientAuth({
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
    };
  }

  factory IngressSettingsClientAuth.fromMap(Map<String, dynamic> map) {
    return IngressSettingsClientAuth(
      certificates: map['certificates'] == null ? null : ((map['certificates']! as List).cast<String>()).input(),
    );
  }
}

