// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_release_criteria.dart';

/// The batch configuration properties definition.
class BatchConfigurationProperties {
  /// The name of the batch group.
  final pulumi.Input<String> batchGroupName;
  /// The artifact changed time.
  final pulumi.Input<String>? changedTime;
  /// The artifact creation time.
  final pulumi.Input<String>? createdTime;
  final pulumi.Input<dynamic>? metadata;
  /// The batch release criteria.
  final pulumi.Input<BatchReleaseCriteria> releaseCriteria;

  /// Creates a new [BatchConfigurationProperties].
  /// [batchGroupName] The name of the batch group.
  /// [changedTime] The artifact changed time.
  /// [createdTime] The artifact creation time.
  /// [metadata] Optional.
  /// [releaseCriteria] The batch release criteria.
  BatchConfigurationProperties({
    required this.batchGroupName,
    this.changedTime,
    this.createdTime,
    this.metadata,
    required this.releaseCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchGroupName': batchGroupName,
      'changedTime': ?changedTime,
      'createdTime': ?createdTime,
      'metadata': ?metadata,
      'releaseCriteria': pulumi.Input.mapInputValue<BatchReleaseCriteria, Map<String, dynamic>>(releaseCriteria, (value) => value.toMap()),
    };
  }

  factory BatchConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return BatchConfigurationProperties(
      batchGroupName: (map['batchGroupName'] as String).input(),
      changedTime: map['changedTime'] == null ? null : (map['changedTime'] as String).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      releaseCriteria: (BatchReleaseCriteria.fromMap((map['releaseCriteria'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

