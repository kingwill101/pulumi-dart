// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_change_status_enum_value_response.dart';
import 'initiated_by_enum_value_response.dart';

/// Definition of ChangeProgressDetails
class ChangeProgressDetailsResponse {
  /// <p>The ID of the configuration change.</p>
  final pulumi.Input<String>? changeId;
  /// <p>The current status of the configuration change.</p>
  final pulumi.Input<ConfigChangeStatusEnumValueResponse>? configChangeStatus;
  /// <p>The IAM principal who initiated the configuration change.</p>
  final pulumi.Input<InitiatedByEnumValueResponse>? initiatedBy;
  /// <p>The last time that the configuration change was updated.</p>
  final pulumi.Input<String>? lastUpdatedTime;
  /// <p>A message corresponding to the status of the configuration change.</p>
  final pulumi.Input<String>? message;
  /// <p>The time that the configuration change was initiated, in Universal Coordinated Time (UTC).</p>
  final pulumi.Input<String>? startTime;

  /// Creates a new [ChangeProgressDetailsResponse].
  /// [changeId] <p>The ID of the configuration change.</p>
  /// [configChangeStatus] <p>The current status of the configuration change.</p>
  /// [initiatedBy] <p>The IAM principal who initiated the configuration change.</p>
  /// [lastUpdatedTime] <p>The last time that the configuration change was updated.</p>
  /// [message] <p>A message corresponding to the status of the configuration change.</p>
  /// [startTime] <p>The time that the configuration change was initiated, in Universal Coordinated Time (UTC).</p>
  ChangeProgressDetailsResponse({
    this.changeId,
    this.configChangeStatus,
    this.initiatedBy,
    this.lastUpdatedTime,
    this.message,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeId': ?changeId,
      'configChangeStatus': ?pulumi.Input.mapOptionalInputValue<ConfigChangeStatusEnumValueResponse, Map<String, dynamic>>(configChangeStatus, (value) => value.toMap()),
      'initiatedBy': ?pulumi.Input.mapOptionalInputValue<InitiatedByEnumValueResponse, Map<String, dynamic>>(initiatedBy, (value) => value.toMap()),
      'lastUpdatedTime': ?lastUpdatedTime,
      'message': ?message,
      'startTime': ?startTime,
    };
  }

  factory ChangeProgressDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ChangeProgressDetailsResponse(
      changeId: map['changeId'] == null ? null : (map['changeId']! as String).input(),
      configChangeStatus: map['configChangeStatus'] == null ? null : (ConfigChangeStatusEnumValueResponse.fromMap((map['configChangeStatus']! as Map).cast<String, dynamic>())).input(),
      initiatedBy: map['initiatedBy'] == null ? null : (InitiatedByEnumValueResponse.fromMap((map['initiatedBy']! as Map).cast<String, dynamic>())).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

