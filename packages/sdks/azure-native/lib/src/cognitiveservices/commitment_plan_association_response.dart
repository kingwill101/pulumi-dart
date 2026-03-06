// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The commitment plan association.
class CommitmentPlanAssociationResponse {
  /// The Azure resource id of the commitment plan.
  final pulumi.Input<String>? commitmentPlanId;
  /// The location of of the commitment plan.
  final pulumi.Input<String>? commitmentPlanLocation;

  /// Creates a new [CommitmentPlanAssociationResponse].
  /// [commitmentPlanId] The Azure resource id of the commitment plan.
  /// [commitmentPlanLocation] The location of of the commitment plan.
  const CommitmentPlanAssociationResponse({
    this.commitmentPlanId,
    this.commitmentPlanLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlanId': ?commitmentPlanId,
      'commitmentPlanLocation': ?commitmentPlanLocation,
    };
  }

  factory CommitmentPlanAssociationResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentPlanAssociationResponse(
      commitmentPlanId: (() { final guardedValue = map['commitmentPlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitmentPlanLocation: (() { final guardedValue = map['commitmentPlanLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

