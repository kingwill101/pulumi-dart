// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProperties {
  /// Describes the version of the MongoDB account.
  final pulumi.Input<String>? serverVersion;

  /// Creates a new [ApiProperties].
  /// [serverVersion] Describes the version of the MongoDB account.
  ApiProperties({
    this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverVersion': ?serverVersion,
    };
  }

  factory ApiProperties.fromMap(Map<String, dynamic> map) {
    return ApiProperties(
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion'] as String).input(),
    );
  }
}

