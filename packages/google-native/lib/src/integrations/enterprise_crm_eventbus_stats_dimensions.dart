// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_stats_dimensions_enum_filter_type.dart';
import 'enterprise_crm_eventbus_stats_dimensions_retry_attempt.dart';

class EnterpriseCrmEventbusStatsDimensions {
  final String? clientId;

  /// Whether to include or exclude the enums matching the regex.
  final EnterpriseCrmEventbusStatsDimensionsEnumFilterType? enumFilterType;
  final String? errorEnumString;
  final EnterpriseCrmEventbusStatsDimensionsRetryAttempt? retryAttempt;
  final String? taskName;
  final String? taskNumber;

  /// Stats have been or will be aggregated on set fields for any semantically-meaningful combination.
  final String? triggerId;
  final String? warningEnumString;
  final String? workflowId;
  final String? workflowName;

  /// Creates a new [EnterpriseCrmEventbusStatsDimensions].
  /// [clientId] Optional.
  /// [enumFilterType] Whether to include or exclude the enums matching the regex.
  /// [errorEnumString] Optional.
  /// [retryAttempt] Optional.
  /// [taskName] Optional.
  /// [taskNumber] Optional.
  /// [triggerId] Stats have been or will be aggregated on set fields for any semantically-meaningful combination.
  /// [warningEnumString] Optional.
  /// [workflowId] Optional.
  /// [workflowName] Optional.
  EnterpriseCrmEventbusStatsDimensions({
    this.clientId,
    this.enumFilterType,
    this.errorEnumString,
    this.retryAttempt,
    this.taskName,
    this.taskNumber,
    this.triggerId,
    this.warningEnumString,
    this.workflowId,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final enumFilterTypeValue = enumFilterType;
    if (enumFilterTypeValue != null) {
      map['enumFilterType'] = enumFilterTypeValue.value;
    }
    final errorEnumStringValue = errorEnumString;
    if (errorEnumStringValue != null) {
      map['errorEnumString'] = errorEnumStringValue;
    }
    final retryAttemptValue = retryAttempt;
    if (retryAttemptValue != null) {
      map['retryAttempt'] = retryAttemptValue.value;
    }
    final taskNameValue = taskName;
    if (taskNameValue != null) {
      map['taskName'] = taskNameValue;
    }
    final taskNumberValue = taskNumber;
    if (taskNumberValue != null) {
      map['taskNumber'] = taskNumberValue;
    }
    final triggerIdValue = triggerId;
    if (triggerIdValue != null) {
      map['triggerId'] = triggerIdValue;
    }
    final warningEnumStringValue = warningEnumString;
    if (warningEnumStringValue != null) {
      map['warningEnumString'] = warningEnumStringValue;
    }
    final workflowIdValue = workflowId;
    if (workflowIdValue != null) {
      map['workflowId'] = workflowIdValue;
    }
    final workflowNameValue = workflowName;
    if (workflowNameValue != null) {
      map['workflowName'] = workflowNameValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusStatsDimensions.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusStatsDimensions(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      enumFilterType: map['enumFilterType'] == null
          ? null
          : EnterpriseCrmEventbusStatsDimensionsEnumFilterType.fromValue(
              map['enumFilterType'] as String),
      errorEnumString: map['errorEnumString'] == null
          ? null
          : map['errorEnumString'] as String,
      retryAttempt: map['retryAttempt'] == null
          ? null
          : EnterpriseCrmEventbusStatsDimensionsRetryAttempt.fromValue(
              map['retryAttempt'] as String),
      taskName: map['taskName'] == null ? null : map['taskName'] as String,
      taskNumber:
          map['taskNumber'] == null ? null : map['taskNumber'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
      warningEnumString: map['warningEnumString'] == null
          ? null
          : map['warningEnumString'] as String,
      workflowId:
          map['workflowId'] == null ? null : map['workflowId'] as String,
      workflowName:
          map['workflowName'] == null ? null : map['workflowName'] as String,
    );
  }
}
