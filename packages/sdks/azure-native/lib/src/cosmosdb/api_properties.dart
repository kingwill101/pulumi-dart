// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProperties {
  /// Describes the version of the MongoDB account.
  final pulumi.Input<String>? serverVersion;

  /// Creates a new [ApiProperties].
  /// [serverVersion] Describes the version of the MongoDB account.
  const ApiProperties({
    this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverVersion': ?serverVersion,
    };
  }

  factory ApiProperties.fromMap(Map<String, dynamic> map) {
    return ApiProperties(
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
