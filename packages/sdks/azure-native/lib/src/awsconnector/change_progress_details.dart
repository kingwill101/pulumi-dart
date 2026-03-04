// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_change_status_enum_value.dart';
import 'initiated_by_enum_value.dart';

/// Definition of ChangeProgressDetails
class ChangeProgressDetails {
  /// &lt;p&gt;The ID of the configuration change.&lt;/p&gt;
  final pulumi.Input<String>? changeId;

  /// &lt;p&gt;The current status of the configuration change.&lt;/p&gt;
  final pulumi.Input<ConfigChangeStatusEnumValue>? configChangeStatus;

  /// &lt;p&gt;The IAM principal who initiated the configuration change.&lt;/p&gt;
  final pulumi.Input<InitiatedByEnumValue>? initiatedBy;

  /// &lt;p&gt;The last time that the configuration change was updated.&lt;/p&gt;
  final pulumi.Input<String>? lastUpdatedTime;

  /// &lt;p&gt;A message corresponding to the status of the configuration change.&lt;/p&gt;
  final pulumi.Input<String>? message;

  /// &lt;p&gt;The time that the configuration change was initiated, in Universal Coordinated Time (UTC).&lt;/p&gt;
  final pulumi.Input<String>? startTime;

  /// Creates a new [ChangeProgressDetails].
  /// [changeId] &lt;p&gt;The ID of the configuration change.&lt;/p&gt;
  /// [configChangeStatus] &lt;p&gt;The current status of the configuration change.&lt;/p&gt;
  /// [initiatedBy] &lt;p&gt;The IAM principal who initiated the configuration change.&lt;/p&gt;
  /// [lastUpdatedTime] &lt;p&gt;The last time that the configuration change was updated.&lt;/p&gt;
  /// [message] &lt;p&gt;A message corresponding to the status of the configuration change.&lt;/p&gt;
  /// [startTime] &lt;p&gt;The time that the configuration change was initiated, in Universal Coordinated Time (UTC).&lt;/p&gt;
  ChangeProgressDetails({
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
      'configChangeStatus':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigChangeStatusEnumValue,
            Map<String, dynamic>
          >(configChangeStatus, (value) => value.toMap()),
      'initiatedBy':
          ?pulumi.Input.mapOptionalInputValue<
            InitiatedByEnumValue,
            Map<String, dynamic>
          >(initiatedBy, (value) => value.toMap()),
      'lastUpdatedTime': ?lastUpdatedTime,
      'message': ?message,
      'startTime': ?startTime,
    };
  }

  factory ChangeProgressDetails.fromMap(Map<String, dynamic> map) {
    return ChangeProgressDetails(
      changeId: (() {
        final guardedValue = map['changeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configChangeStatus: (() {
        final guardedValue = map['configChangeStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigChangeStatusEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      initiatedBy: (() {
        final guardedValue = map['initiatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InitiatedByEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      lastUpdatedTime: (() {
        final guardedValue = map['lastUpdatedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
