// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_reviewer_response.dart';
import 'system_data_response.dart';

/// Access Review Instance.
class AccessReviewInstanceResponse {
  /// This is the collection of backup reviewers.
  final pulumi.Input<List<AccessReviewReviewerResponse>?>? backupReviewers;
  /// The DateTime when the review instance is scheduled to end.
  final pulumi.Input<String?>? endDateTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// This is the collection of reviewers.
  final pulumi.Input<List<AccessReviewReviewerResponse>?>? reviewers;
  /// This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  final pulumi.Input<String> reviewersType;
  /// The DateTime when the review instance is scheduled to be start.
  final pulumi.Input<String?>? startDateTime;
  /// This read-only field specifies the status of an access review instance.
  final pulumi.Input<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [AccessReviewInstanceResponse].
  /// [backupReviewers] This is the collection of backup reviewers.
  /// [endDateTime] The DateTime when the review instance is scheduled to end.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [reviewers] This is the collection of reviewers.
  /// [reviewersType] This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  /// [startDateTime] The DateTime when the review instance is scheduled to be start.
  /// [status] This read-only field specifies the status of an access review instance.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const AccessReviewInstanceResponse({
    this.backupReviewers,
    this.endDateTime,
    required this.id,
    required this.name,
    this.reviewers,
    required this.reviewersType,
    this.startDateTime,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupReviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewerResponse>, List<Map<String, dynamic>>>(backupReviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endDateTime': ?endDateTime,
      'id': id,
      'name': name,
      'reviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewerResponse>, List<Map<String, dynamic>>>(reviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reviewersType': reviewersType,
      'startDateTime': ?startDateTime,
      'status': status,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AccessReviewInstanceResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewInstanceResponse(
      backupReviewers: (() { final guardedValue = map['backupReviewers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessReviewReviewerResponse>(guardedValue, (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endDateTime: (() { final guardedValue = map['endDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      reviewers: (() { final guardedValue = map['reviewers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessReviewReviewerResponse>(guardedValue, (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reviewersType: pulumi.Input.fromValue(map['reviewersType'] as String),
      startDateTime: (() { final guardedValue = map['startDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
