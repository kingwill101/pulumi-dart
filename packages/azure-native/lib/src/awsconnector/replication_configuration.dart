// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_destination.dart';
import 'replication_rule.dart';

/// Definition of ReplicationConfiguration
class ReplicationConfiguration {
  /// An array of destination objects. Only one destination object is supported.
  final List<ReplicationDestination>? destinations;
  /// The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  final String? role;
  /// A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  final List<ReplicationRule>? rules;

  /// Creates a new [ReplicationConfiguration].
  /// [destinations] An array of destination objects. Only one destination object is supported.
  /// [role] The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  /// [rules] A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  ReplicationConfiguration({
    this.destinations,
    this.role,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<ReplicationDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'role': ?role,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ReplicationRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ReplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return ReplicationConfiguration(
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<ReplicationDestination>(map['destinations'], (value) => ReplicationDestination.fromMap((value as Map).cast<String, dynamic>())),
      role: map['role'] == null ? null : map['role'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ReplicationRule>(map['rules'], (value) => ReplicationRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

