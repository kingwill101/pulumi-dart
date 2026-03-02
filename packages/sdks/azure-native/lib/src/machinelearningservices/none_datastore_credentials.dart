// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Empty/none datastore credentials.
class NoneDatastoreCredentials {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'None'.
  final pulumi.Input<String> credentialsType;

  /// Creates a new [NoneDatastoreCredentials].
  /// [credentialsType] Enum to determine the datastore credentials type.
  NoneDatastoreCredentials({
    required this.credentialsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsType': credentialsType,
    };
  }

  factory NoneDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return NoneDatastoreCredentials(
      credentialsType: (map['credentialsType'] as String).input(),
    );
  }
}

