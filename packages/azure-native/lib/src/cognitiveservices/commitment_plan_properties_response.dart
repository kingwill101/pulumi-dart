// ignore_for_file: unused_element, unnecessary_cast

import 'commitment_period_response.dart';

/// Properties of Cognitive Services account commitment plan.
class CommitmentPlanPropertiesResponse {
  /// AutoRenew commitment plan.
  final bool? autoRenew;
  /// Commitment plan guid.
  final String? commitmentPlanGuid;
  /// Cognitive Services account commitment period.
  final CommitmentPeriodResponse? current;
  /// Account hosting model.
  final String? hostingModel;
  /// Cognitive Services account commitment period.
  final CommitmentPeriodResponse last;
  /// Cognitive Services account commitment period.
  final CommitmentPeriodResponse? next;
  /// Commitment plan type.
  final String? planType;
  /// The list of ProvisioningIssue.
  final List<String> provisioningIssues;
  /// Gets the status of the resource at the time the operation was called.
  final String provisioningState;

  /// Creates a new [CommitmentPlanPropertiesResponse].
  /// [autoRenew] AutoRenew commitment plan.
  /// [commitmentPlanGuid] Commitment plan guid.
  /// [current] Cognitive Services account commitment period.
  /// [hostingModel] Account hosting model.
  /// [last] Cognitive Services account commitment period.
  /// [next] Cognitive Services account commitment period.
  /// [planType] Commitment plan type.
  /// [provisioningIssues] The list of ProvisioningIssue.
  /// [provisioningState] Gets the status of the resource at the time the operation was called.
  CommitmentPlanPropertiesResponse({
    this.autoRenew,
    this.commitmentPlanGuid,
    this.current,
    this.hostingModel,
    required this.last,
    this.next,
    this.planType,
    required this.provisioningIssues,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'commitmentPlanGuid': ?commitmentPlanGuid,
      'current': ?current == null ? null : current!.toMap(),
      'hostingModel': ?hostingModel,
      'last': last.toMap(),
      'next': ?next == null ? null : next!.toMap(),
      'planType': ?planType,
      'provisioningIssues': provisioningIssues,
      'provisioningState': provisioningState,
    };
  }

  factory CommitmentPlanPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentPlanPropertiesResponse(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      commitmentPlanGuid: map['commitmentPlanGuid'] == null ? null : map['commitmentPlanGuid'] as String,
      current: map['current'] == null ? null : CommitmentPeriodResponse.fromMap((map['current'] as Map).cast<String, dynamic>()),
      hostingModel: map['hostingModel'] == null ? null : map['hostingModel'] as String,
      last: CommitmentPeriodResponse.fromMap((map['last'] as Map).cast<String, dynamic>()),
      next: map['next'] == null ? null : CommitmentPeriodResponse.fromMap((map['next'] as Map).cast<String, dynamic>()),
      planType: map['planType'] == null ? null : map['planType'] as String,
      provisioningIssues: (map['provisioningIssues'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

