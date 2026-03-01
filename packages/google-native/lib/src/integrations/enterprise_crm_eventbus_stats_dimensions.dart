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
    return <String, dynamic>{
      'clientId': ?clientId,
      'enumFilterType': ?enumFilterType == null ? null : enumFilterType!.value,
      'errorEnumString': ?errorEnumString,
      'retryAttempt': ?retryAttempt == null ? null : retryAttempt!.value,
      'taskName': ?taskName,
      'taskNumber': ?taskNumber,
      'triggerId': ?triggerId,
      'warningEnumString': ?warningEnumString,
      'workflowId': ?workflowId,
      'workflowName': ?workflowName,
    };
  }

  factory EnterpriseCrmEventbusStatsDimensions.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusStatsDimensions(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      enumFilterType: map['enumFilterType'] == null
          ? null
          : EnterpriseCrmEventbusStatsDimensionsEnumFilterType.fromValue(
              map['enumFilterType'] as String,
            ),
      errorEnumString: map['errorEnumString'] == null
          ? null
          : map['errorEnumString'] as String,
      retryAttempt: map['retryAttempt'] == null
          ? null
          : EnterpriseCrmEventbusStatsDimensionsRetryAttempt.fromValue(
              map['retryAttempt'] as String,
            ),
      taskName: map['taskName'] == null ? null : map['taskName'] as String,
      taskNumber: map['taskNumber'] == null
          ? null
          : map['taskNumber'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
      warningEnumString: map['warningEnumString'] == null
          ? null
          : map['warningEnumString'] as String,
      workflowId: map['workflowId'] == null
          ? null
          : map['workflowId'] as String,
      workflowName: map['workflowName'] == null
          ? null
          : map['workflowName'] as String,
    );
  }
}
