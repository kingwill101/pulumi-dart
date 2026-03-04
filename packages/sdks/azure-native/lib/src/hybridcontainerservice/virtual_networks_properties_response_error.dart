// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworksPropertiesResponseError {
  final pulumi.Input<String>? code;
  final pulumi.Input<String>? message;

  /// Creates a new [VirtualNetworksPropertiesResponseError].
  /// [code] Optional.
  /// [message] Optional.
  VirtualNetworksPropertiesResponseError({this.code, this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': ?code, 'message': ?message};
  }

  factory VirtualNetworksPropertiesResponseError.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworksPropertiesResponseError(
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
