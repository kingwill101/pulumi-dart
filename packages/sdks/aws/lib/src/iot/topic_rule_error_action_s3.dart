// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionS3 {
  /// The Amazon S3 bucket name.
  final pulumi.Input<String> bucketName;
  /// The Amazon S3 canned ACL that controls access to the object identified by the object key. [Valid values](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  final pulumi.Input<String>? cannedAcl;
  /// The object key.
  final pulumi.Input<String> key;
  /// The ARN of the IAM role that grants access.
  final pulumi.Input<String> roleArn;

  /// Creates a new [TopicRuleErrorActionS3].
  /// [bucketName] The Amazon S3 bucket name.
  /// [cannedAcl] The Amazon S3 canned ACL that controls access to the object identified by the object key. [Valid values](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  /// [key] The object key.
  /// [roleArn] The ARN of the IAM role that grants access.
  const TopicRuleErrorActionS3({
    required this.bucketName,
    this.cannedAcl,
    required this.key,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'cannedAcl': ?cannedAcl,
      'key': key,
      'roleArn': roleArn,
    };
  }

  factory TopicRuleErrorActionS3.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionS3(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      cannedAcl: (() { final guardedValue = map['cannedAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
