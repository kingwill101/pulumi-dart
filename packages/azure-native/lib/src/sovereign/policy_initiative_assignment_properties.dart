// ignore_for_file: unused_element, unnecessary_cast


/// The properties of assigned policy initiatives.
class PolicyInitiativeAssignmentProperties {
  /// The parameters of the assigned policy initiative.
  final dynamic assignmentParameters;
  /// The fully qualified id of the policy initiative.
  final String policyInitiativeId;

  /// Creates a new [PolicyInitiativeAssignmentProperties].
  /// [assignmentParameters] The parameters of the assigned policy initiative.
  /// [policyInitiativeId] The fully qualified id of the policy initiative.
  PolicyInitiativeAssignmentProperties({
    required this.assignmentParameters,
    required this.policyInitiativeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentParameters': assignmentParameters,
      'policyInitiativeId': policyInitiativeId,
    };
  }

  factory PolicyInitiativeAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return PolicyInitiativeAssignmentProperties(
      assignmentParameters: map['assignmentParameters'],
      policyInitiativeId: map['policyInitiativeId'] as String,
    );
  }
}

