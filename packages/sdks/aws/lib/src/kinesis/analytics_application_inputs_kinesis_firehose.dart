// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsKinesisFirehose {
  final pulumi.Input<String> resourceArn;
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationInputsKinesisFirehose].
  /// [resourceArn] Required.
  /// [roleArn] Required.
  const AnalyticsApplicationInputsKinesisFirehose({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationInputsKinesisFirehose.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsKinesisFirehose(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
