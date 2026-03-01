// ignore_for_file: unused_element, unnecessary_cast


/// The commitment plan association.
class CommitmentPlanAssociationResponse {
  /// The Azure resource id of the commitment plan.
  final String? commitmentPlanId;
  /// The location of of the commitment plan.
  final String? commitmentPlanLocation;

  /// Creates a new [CommitmentPlanAssociationResponse].
  /// [commitmentPlanId] The Azure resource id of the commitment plan.
  /// [commitmentPlanLocation] The location of of the commitment plan.
  CommitmentPlanAssociationResponse({
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
      commitmentPlanId: map['commitmentPlanId'] == null ? null : map['commitmentPlanId'] as String,
      commitmentPlanLocation: map['commitmentPlanLocation'] == null ? null : map['commitmentPlanLocation'] as String,
    );
  }
}

