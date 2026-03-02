// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_period_response.dart';

/// Properties of Cognitive Services account commitment plan.
class CommitmentPlanPropertiesResponse {
  /// AutoRenew commitment plan.
  final pulumi.Input<bool>? autoRenew;
  /// Commitment plan guid.
  final pulumi.Input<String>? commitmentPlanGuid;
  /// Cognitive Services account commitment period.
  final pulumi.Input<CommitmentPeriodResponse>? current;
  /// Account hosting model.
  final pulumi.Input<String>? hostingModel;
  /// Cognitive Services account commitment period.
  final pulumi.Input<CommitmentPeriodResponse> last;
  /// Cognitive Services account commitment period.
  final pulumi.Input<CommitmentPeriodResponse>? next;
  /// Commitment plan type.
  final pulumi.Input<String>? planType;
  /// The list of ProvisioningIssue.
  final pulumi.Input<List<String>> provisioningIssues;
  /// Gets the status of the resource at the time the operation was called.
  final pulumi.Input<String> provisioningState;

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
      'current': ?pulumi.Input.mapOptionalInputValue<CommitmentPeriodResponse, Map<String, dynamic>>(current, (value) => value.toMap()),
      'hostingModel': ?hostingModel,
      'last': pulumi.Input.mapInputValue<CommitmentPeriodResponse, Map<String, dynamic>>(last, (value) => value.toMap()),
      'next': ?pulumi.Input.mapOptionalInputValue<CommitmentPeriodResponse, Map<String, dynamic>>(next, (value) => value.toMap()),
      'planType': ?planType,
      'provisioningIssues': provisioningIssues,
      'provisioningState': provisioningState,
    };
  }

  factory CommitmentPlanPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentPlanPropertiesResponse(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      commitmentPlanGuid: map['commitmentPlanGuid'] == null ? null : (map['commitmentPlanGuid'] as String).input(),
      current: map['current'] == null ? null : (CommitmentPeriodResponse.fromMap((map['current'] as Map).cast<String, dynamic>())).input(),
      hostingModel: map['hostingModel'] == null ? null : (map['hostingModel'] as String).input(),
      last: (CommitmentPeriodResponse.fromMap((map['last'] as Map).cast<String, dynamic>())).input(),
      next: map['next'] == null ? null : (CommitmentPeriodResponse.fromMap((map['next'] as Map).cast<String, dynamic>())).input(),
      planType: map['planType'] == null ? null : (map['planType'] as String).input(),
      provisioningIssues: ((map['provisioningIssues'] as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

