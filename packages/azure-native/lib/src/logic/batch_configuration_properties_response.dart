// ignore_for_file: unused_element, unnecessary_cast

import 'batch_release_criteria_response.dart';

/// The batch configuration properties definition.
class BatchConfigurationPropertiesResponse {
  /// The name of the batch group.
  final String batchGroupName;
  /// The artifact changed time.
  final String? changedTime;
  /// The artifact creation time.
  final String? createdTime;
  final dynamic metadata;
  /// The batch release criteria.
  final BatchReleaseCriteriaResponse releaseCriteria;

  /// Creates a new [BatchConfigurationPropertiesResponse].
  /// [batchGroupName] The name of the batch group.
  /// [changedTime] The artifact changed time.
  /// [createdTime] The artifact creation time.
  /// [metadata] Optional.
  /// [releaseCriteria] The batch release criteria.
  BatchConfigurationPropertiesResponse({
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
      'releaseCriteria': releaseCriteria.toMap(),
    };
  }

  factory BatchConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BatchConfigurationPropertiesResponse(
      batchGroupName: map['batchGroupName'] as String,
      changedTime: map['changedTime'] == null ? null : map['changedTime'] as String,
      createdTime: map['createdTime'] == null ? null : map['createdTime'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      releaseCriteria: BatchReleaseCriteriaResponse.fromMap((map['releaseCriteria'] as Map).cast<String, dynamic>()),
    );
  }
}

