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
      os: map['os'] == null ? null : (map['os'] as String).input(),
      osArchitecture: map['osArchitecture'] == null ? null : (map['osArchitecture'] as String).input(),
      osName: map['osName'] == null ? null : (map['osName'] as String).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion'] as String).input(),
    );
  }
}

