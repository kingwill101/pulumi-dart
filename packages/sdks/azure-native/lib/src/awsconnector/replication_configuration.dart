// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_destination.dart';
import 'replication_rule.dart';

/// Definition of ReplicationConfiguration
class ReplicationConfiguration {
  /// An array of destination objects. Only one destination object is supported.
  final pulumi.Input<List<ReplicationDestination>>? destinations;
  /// The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<String>? role;
  /// A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  final pulumi.Input<List<ReplicationRule>>? rules;

  /// Creates a new [ReplicationConfiguration].
  /// [destinations] An array of destination objects. Only one destination object is supported.
  /// [role] The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  /// [rules] A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  const ReplicationConfiguration({
    this.destinations,
    this.role,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<ReplicationDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ReplicationDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ReplicationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return ReplicationConfiguration(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationDestination>(guardedValue, (value) => ReplicationDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationRule>(guardedValue, (value) => ReplicationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

