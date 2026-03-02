// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiPropertiesResponse {
  /// Describes the version of the MongoDB account.
  final pulumi.Input<String>? serverVersion;

  /// Creates a new [ApiPropertiesResponse].
  /// [serverVersion] Describes the version of the MongoDB account.
  ApiPropertiesResponse({
    this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverVersion': ?serverVersion,
    };
  }

  factory ApiPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiPropertiesResponse(
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion']! as String).input(),
    );
  }
}

