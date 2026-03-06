// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGrantAccessGrantsLocationConfiguration {
  /// Sub-prefix.
  final pulumi.Input<String>? s3SubPrefix;

  /// Creates a new [AccessGrantAccessGrantsLocationConfiguration].
  /// [s3SubPrefix] Sub-prefix.
  const AccessGrantAccessGrantsLocationConfiguration({
    this.s3SubPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3SubPrefix': ?s3SubPrefix,
    };
  }

  factory AccessGrantAccessGrantsLocationConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessGrantAccessGrantsLocationConfiguration(
      s3SubPrefix: (() { final guardedValue = map['s3SubPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

