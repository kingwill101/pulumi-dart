// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Empty/none datastore credentials.
class NoneDatastoreCredentialsResponse {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'None'.
  final pulumi.Input<String> credentialsType;

  /// Creates a new [NoneDatastoreCredentialsResponse].
  /// [credentialsType] Enum to determine the datastore credentials type.
  const NoneDatastoreCredentialsResponse({
    required this.credentialsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsType': credentialsType,
    };
  }

  factory NoneDatastoreCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return NoneDatastoreCredentialsResponse(
      credentialsType: pulumi.Input.fromValue(map['credentialsType'] as String),
    );
  }
}
