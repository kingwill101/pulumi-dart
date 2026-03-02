// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_destination_response.dart';
import 'replication_rule_response.dart';

/// Definition of ReplicationConfiguration
class ReplicationConfigurationResponse {
  /// An array of destination objects. Only one destination object is supported.
  final pulumi.Input<List<ReplicationDestinationResponse>>? destinations;
  /// The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<String>? role;
  /// A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  final pulumi.Input<List<ReplicationRuleResponse>>? rules;

  /// Creates a new [ReplicationConfigurationResponse].
  /// [destinations] An array of destination objects. Only one destination object is supported.
  /// [role] The Amazon Resource Name (ARN) of the IAMlong (IAM) role that Amazon S3 assumes when replicating objects. For more information, see [How to Set Up Replication](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html) in the *Amazon S3 User Guide*.
  /// [rules] A container for one or more replication rules. A replication configuration must have at least one rule and can contain a maximum of 1,000 rules.
  ReplicationConfigurationResponse({
    this.destinations,
    this.role,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<ReplicationDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ReplicationDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ReplicationRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ReplicationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationResponse(
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<ReplicationDestinationResponse>(map['destinations'], (value) => ReplicationDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ReplicationRuleResponse>(map['rules'], (value) => ReplicationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

