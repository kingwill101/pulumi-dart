// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OperatingSystemDetailsResponse {
  final pulumi.Input<String>? os;
  final pulumi.Input<String>? osArchitecture;
  final pulumi.Input<String>? osName;
  final pulumi.Input<String>? osVersion;

  /// Creates a new [OperatingSystemDetailsResponse].
  /// [os] Optional.
  /// [osArchitecture] Optional.
  /// [osName] Optional.
  /// [osVersion] Optional.
  OperatingSystemDetailsResponse({
    this.os,
    this.osArchitecture,
    this.osName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'os': ?os,
      'osArchitecture': ?osArchitecture,
      'osName': ?osName,
      'osVersion': ?osVersion,
    };
  }

  factory OperatingSystemDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OperatingSystemDetailsResponse(
      os: (() {
        final guardedValue = map['os'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osArchitecture: (() {
        final guardedValue = map['osArchitecture'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osName: (() {
        final guardedValue = map['osName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osVersion: (() {
        final guardedValue = map['osVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
