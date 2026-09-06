// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_rule_response.dart';

/// Definition of ReplicationConfiguration
class ReplicationConfigurationS3BucketResponse {
  /// The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<String?>? role;
  /// A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  final pulumi.Input<List<ReplicationRuleResponse>?>? rules;

  /// Creates a new [ReplicationConfigurationS3BucketResponse].
  /// [role] The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  /// [rules] A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  const ReplicationConfigurationS3BucketResponse({
    this.role,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': ?role,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ReplicationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationConfigurationS3BucketResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationS3BucketResponse(
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRuleResponse>(guardedValue, (value) => ReplicationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
