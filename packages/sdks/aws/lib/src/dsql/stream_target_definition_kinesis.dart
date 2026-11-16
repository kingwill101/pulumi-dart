// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamTargetDefinitionKinesis {
  /// ARN of the IAM role that grants permission to write to the Kinesis stream. This can be a standard role ( arn:aws:iam::account-id:role/role-name ) or a role with a path prefix ( arn:aws:iam::account-id:role/service-role/role-name ), such as roles auto-created by the console.
  final pulumi.Input<String> roleArn;
  /// ARN of the Kinesis stream.
  final pulumi.Input<String> streamArn;

  /// Creates a new [StreamTargetDefinitionKinesis].
  /// [roleArn] ARN of the IAM role that grants permission to write to the Kinesis stream. This can be a standard role ( arn:aws:iam::account-id:role/role-name ) or a role with a path prefix ( arn:aws:iam::account-id:role/service-role/role-name ), such as roles auto-created by the console.
  /// [streamArn] ARN of the Kinesis stream.
  const StreamTargetDefinitionKinesis({
    required this.roleArn,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'streamArn': streamArn,
    };
  }

  factory StreamTargetDefinitionKinesis.fromMap(Map<String, dynamic> map) {
    return StreamTargetDefinitionKinesis(
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
    );
  }
}
