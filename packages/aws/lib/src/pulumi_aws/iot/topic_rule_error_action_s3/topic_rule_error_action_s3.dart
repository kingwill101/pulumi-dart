// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionS3 {
  /// The Amazon S3 bucket name.
  final String bucketName;

  /// The Amazon S3 canned ACL that controls access to the object identified by the object key. [Valid values](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl).
  final String? cannedAcl;

  /// The object key.
  final String key;

  /// The ARN of the IAM role that grants access.
  final String roleArn;

  TopicRuleErrorActionS3({
    required this.bucketName,
    this.cannedAcl,
    required this.key,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final cannedAclValue = cannedAcl;
    if (cannedAclValue != null) {
      map['cannedAcl'] = cannedAclValue;
    }
    map['key'] = key;
    map['roleArn'] = roleArn;
    return map;
  }

  factory TopicRuleErrorActionS3.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionS3(
      bucketName: map['bucketName'] as String,
      cannedAcl: map['cannedAcl'] == null ? null : map['cannedAcl'] as String,
      key: map['key'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
