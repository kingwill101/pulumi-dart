// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_release_criteria_response.dart';

/// The batch configuration properties definition.
class BatchConfigurationPropertiesResponse {
  /// The name of the batch group.
  final pulumi.Input<String> batchGroupName;
  /// The artifact changed time.
  final pulumi.Input<String>? changedTime;
  /// The artifact creation time.
  final pulumi.Input<String>? createdTime;
  final pulumi.Input<dynamic>? metadata;
  /// The batch release criteria.
  final pulumi.Input<BatchReleaseCriteriaResponse> releaseCriteria;

  /// Creates a new [BatchConfigurationPropertiesResponse].
  /// [batchGroupName] The name of the batch group.
  /// [changedTime] The artifact changed time.
  /// [createdTime] The artifact creation time.
  /// [metadata] Optional.
  /// [releaseCriteria] The batch release criteria.
  const BatchConfigurationPropertiesResponse({
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
      'releaseCriteria': pulumi.Input.mapInputValue<BatchReleaseCriteriaResponse, Map<String, dynamic>>(releaseCriteria, (value) => value.toMap()),
    };
  }

  factory BatchConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BatchConfigurationPropertiesResponse(
      batchGroupName: pulumi.Input.fromValue(map['batchGroupName'] as String),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      releaseCriteria: pulumi.Input.fromValue(BatchReleaseCriteriaResponse.fromMap((map['releaseCriteria']! as Map).cast<String, dynamic>())),
    );
  }
}

