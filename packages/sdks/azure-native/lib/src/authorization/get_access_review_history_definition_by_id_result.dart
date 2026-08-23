// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_history_instance_response.dart';
import 'access_review_recurrence_range_response.dart';
import 'access_review_scope_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccessReviewHistoryDefinitionById.
class GetAccessReviewHistoryDefinitionByIdResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Date time when history definition was created
  final String createdDateTime;
  /// Collection of review decisions which the history data should be filtered on. For example if Approve and Deny are supplied the data will only contain review results in which the decision maker approved or denied a review request.
  final List<String>? decisions;
  /// The display name for the history definition.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Set of access review history instances for this history definition.
  final List<AccessReviewHistoryInstanceResponse>? instances;
  /// The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  final int? interval;
  /// The name of the resource
  final String name;
  /// The identity id
  final String principalId;
  /// The identity display name
  final String principalName;
  /// The identity type : user/servicePrincipal
  final String principalType;
  /// Access Review History Definition recurrence settings.
  final AccessReviewRecurrenceRangeResponse? range;
  /// Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  final String reviewHistoryPeriodEndDateTime;
  /// Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  final String reviewHistoryPeriodStartDateTime;
  /// A collection of scopes used when selecting review history data
  final List<AccessReviewScopeResponse>? scopes;
  /// This read-only field specifies the of the requested review history data. This is either requested, in-progress, done or error.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The user principal name(if valid)
  final String userPrincipalName;

  /// Creates a new [GetAccessReviewHistoryDefinitionByIdResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDateTime] Date time when history definition was created
  /// [decisions] Collection of review decisions which the history data should be filtered on. For example if Approve and Deny are supplied the data will only contain review results in which the decision maker approved or denied a review request.
  /// [displayName] The display name for the history definition.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [instances] Set of access review history instances for this history definition.
  /// [interval] The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  /// [name] The name of the resource
  /// [principalId] The identity id
  /// [principalName] The identity display name
  /// [principalType] The identity type : user/servicePrincipal
  /// [range] Access Review History Definition recurrence settings.
  /// [reviewHistoryPeriodEndDateTime] Date time used when selecting review data, all reviews included in data end on or before this date. For use only with one-time/non-recurring reports.
  /// [reviewHistoryPeriodStartDateTime] Date time used when selecting review data, all reviews included in data start on or after this date. For use only with one-time/non-recurring reports.
  /// [scopes] A collection of scopes used when selecting review history data
  /// [status] This read-only field specifies the of the requested review history data. This is either requested, in-progress, done or error.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userPrincipalName] The user principal name(if valid)
  const GetAccessReviewHistoryDefinitionByIdResult({
    required this.azureApiVersion,
    required this.createdDateTime,
    this.decisions,
    this.displayName,
    required this.id,
    this.instances,
    this.interval,
    required this.name,
    required this.principalId,
    required this.principalName,
    required this.principalType,
    this.range,
    required this.reviewHistoryPeriodEndDateTime,
    required this.reviewHistoryPeriodStartDateTime,
    this.scopes,
    required this.status,
    required this.systemData,
    required this.type,
    required this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDateTime': createdDateTime,
      'decisions': ?decisions,
      'displayName': ?displayName,
      'id': id,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<AccessReviewHistoryInstanceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'interval': ?interval,
      'name': name,
      'principalId': principalId,
      'principalName': principalName,
      'principalType': principalType,
      'range': ?range?.toMap(),
      'reviewHistoryPeriodEndDateTime': reviewHistoryPeriodEndDateTime,
      'reviewHistoryPeriodStartDateTime': reviewHistoryPeriodStartDateTime,
      'scopes': ?(() { final guardedValue = scopes; if (guardedValue == null) return null; return pulumi.Input.encodeList<AccessReviewScopeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
      'userPrincipalName': userPrincipalName,
    };
  }

  factory GetAccessReviewHistoryDefinitionByIdResult.fromMap(Map<String, dynamic> map) {
    return GetAccessReviewHistoryDefinitionByIdResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDateTime: map['createdDateTime'] as String,
      decisions: (() { final guardedValue = map['decisions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessReviewHistoryInstanceResponse>(guardedValue, (value) => AccessReviewHistoryInstanceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return AccessReviewRecurrenceRangeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reviewHistoryPeriodEndDateTime: map['reviewHistoryPeriodEndDateTime'] as String,
      reviewHistoryPeriodStartDateTime: map['reviewHistoryPeriodStartDateTime'] as String,
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessReviewScopeResponse>(guardedValue, (value) => AccessReviewScopeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userPrincipalName: map['userPrincipalName'] as String,
    );
  }
}
