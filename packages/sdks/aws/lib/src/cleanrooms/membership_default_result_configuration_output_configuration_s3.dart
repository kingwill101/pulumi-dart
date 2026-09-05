// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MembershipDefaultResultConfigurationOutputConfigurationS3 {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String?>? keyPrefix;
  final pulumi.Input<String> resultFormat;

  /// Creates a new [MembershipDefaultResultConfigurationOutputConfigurationS3].
  /// [bucket] Required.
  /// [keyPrefix] Optional.
  /// [resultFormat] Required.
  const MembershipDefaultResultConfigurationOutputConfigurationS3({
    required this.bucket,
    this.keyPrefix,
    required this.resultFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'keyPrefix': ?keyPrefix,
      'resultFormat': resultFormat,
    };
  }

  factory MembershipDefaultResultConfigurationOutputConfigurationS3.fromMap(Map<String, dynamic> map) {
    return MembershipDefaultResultConfigurationOutputConfigurationS3(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      keyPrefix: (() { final guardedValue = map['keyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resultFormat: pulumi.Input.fromValue(map['resultFormat'] as String),
    );
  }
}
