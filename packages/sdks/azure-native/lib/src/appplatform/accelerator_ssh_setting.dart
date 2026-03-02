// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth setting for SSH auth.
class AcceleratorSshSetting {
  /// The type of the auth setting.
  /// Expected value is 'SSH'.
  final pulumi.Input<String> authType;
  /// Public SSH Key of git repository.
  final pulumi.Input<String>? hostKey;
  /// SSH Key algorithm of git repository.
  final pulumi.Input<String>? hostKeyAlgorithm;
  /// Private SSH Key algorithm of git repository.
  final pulumi.Input<String>? privateKey;

  /// Creates a new [AcceleratorSshSetting].
  /// [authType] The type of the auth setting.
  /// [hostKey] Public SSH Key of git repository.
  /// [hostKeyAlgorithm] SSH Key algorithm of git repository.
  /// [privateKey] Private SSH Key algorithm of git repository.
  AcceleratorSshSetting({
    required this.authType,
    this.hostKey,
    this.hostKeyAlgorithm,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'privateKey': ?privateKey,
    };
  }

  factory AcceleratorSshSetting.fromMap(Map<String, dynamic> map) {
    return AcceleratorSshSetting(
      authType: (map['authType'] as String).input(),
      hostKey: map['hostKey'] == null ? null : (map['hostKey'] as String).input(),
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : (map['hostKeyAlgorithm'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
    );
  }
}

