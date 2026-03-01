// ignore_for_file: unused_element, unnecessary_cast


class JobAgentIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to assign to this Elastic Job Agent.
  final List<String> identityIds;
  /// Specifies the type of Managed Service Identity that should be configured on this Elastic Job Agent. Currently only `UserAssigned` is supported.
  final String type;

  /// Creates a new [JobAgentIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to assign to this Elastic Job Agent.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Elastic Job Agent. Currently only `UserAssigned` is supported.
  JobAgentIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory JobAgentIdentity.fromMap(Map<String, dynamic> map) {
    return JobAgentIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

