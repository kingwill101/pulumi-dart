// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisionedClustersCommonPropertiesResponseError {
  final pulumi.Input<String>? code;
  final pulumi.Input<String>? message;

  /// Creates a new [ProvisionedClustersCommonPropertiesResponseError].
  /// [code] Optional.
  /// [message] Optional.
  ProvisionedClustersCommonPropertiesResponseError({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'message': ?message};
  }

  factory ProvisionedClustersCommonPropertiesResponseError.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProvisionedClustersCommonPropertiesResponseError(
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
