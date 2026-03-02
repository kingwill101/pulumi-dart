// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageSpacesPropertiesError {
  final pulumi.Input<String>? code;
  final pulumi.Input<String>? message;

  /// Creates a new [StorageSpacesPropertiesError].
  /// [code] Optional.
  /// [message] Optional.
  StorageSpacesPropertiesError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory StorageSpacesPropertiesError.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesError(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

