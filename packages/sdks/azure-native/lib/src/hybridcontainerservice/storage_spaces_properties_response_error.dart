// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageSpacesPropertiesResponseError {
  final pulumi.Input<String>? code;
  final pulumi.Input<String>? message;

  /// Creates a new [StorageSpacesPropertiesResponseError].
  /// [code] Optional.
  /// [message] Optional.
  StorageSpacesPropertiesResponseError({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'message': ?message};
  }

  factory StorageSpacesPropertiesResponseError.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageSpacesPropertiesResponseError(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
