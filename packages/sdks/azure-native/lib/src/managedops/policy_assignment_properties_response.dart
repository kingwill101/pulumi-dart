// ignore_for_file: unused_element, unnecessary_cast


/// Policy assignments created for managing services.
class PolicyAssignmentPropertiesResponse {
  /// Policy initiative assignment ID.
  final String policyInitiativeAssignmentId;

  /// Creates a new [PolicyAssignmentPropertiesResponse].
  /// [policyInitiativeAssignmentId] Policy initiative assignment ID.
  PolicyAssignmentPropertiesResponse({
    required this.policyInitiativeAssignmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyInitiativeAssignmentId': policyInitiativeAssignmentId,
    };
  }

  factory PolicyAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponse(
      policyInitiativeAssignmentId: map['policyInitiativeAssignmentId'] as String,
    );
  }
}

