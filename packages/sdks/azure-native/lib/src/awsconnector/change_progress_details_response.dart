// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_change_status_enum_value_response.dart';
import 'initiated_by_enum_value_response.dart';

/// Definition of ChangeProgressDetails
class ChangeProgressDetailsResponse {
  /// &lt;p&gt;The ID of the configuration change.&lt;/p&gt;
  final pulumi.Input<String>? changeId;
  /// &lt;p&gt;The current status of the configuration change.&lt;/p&gt;
  final pulumi.Input<ConfigChangeStatusEnumValueResponse>? configChangeStatus;
  /// &lt;p&gt;The IAM principal who initiated the configuration change.&lt;/p&gt;
  final pulumi.Input<InitiatedByEnumValueResponse>? initiatedBy;
  /// &lt;p&gt;The last time that the configuration change was updated.&lt;/p&gt;
  final pulumi.Input<String>? lastUpdatedTime;
  /// &lt;p&gt;A message corresponding to the status of the configuration change.&lt;/p&gt;
  final pulumi.Input<String>? message;
  /// &lt;p&gt;The time that the configuration change was initiated, in Universal Coordinated Time (UTC).&lt;/p&gt;
  final pulumi.Input<String>? startTime;

  /// Creates a new [ChangeProgressDetailsResponse].
  /// [changeId] &lt;p&gt;The ID of the configuration change.&lt;/p&gt;
  /// [configChangeStatus] &lt;p&gt;The current status of the configuration change.&lt;/p&gt;
  /// [initiatedBy] &lt;p&gt;The IAM principal who initiated the configuration change.&lt;/p&gt;
  /// [lastUpdatedTime] &lt;p&gt;The last time that the configuration change was updated.&lt;/p&gt;
  /// [message] &lt;p&gt;A message corresponding to the status of the configuration change.&lt;/p&gt;
  /// [startTime] &lt;p&gt;The time that the configuration change was initiated, in Universal Coordinated Time (UTC).&lt;/p&gt;
  const ChangeProgressDetailsResponse({
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
      changeId: (() { final guardedValue = map['changeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configChangeStatus: (() { final guardedValue = map['configChangeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigChangeStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initiatedBy: (() { final guardedValue = map['initiatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InitiatedByEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
