// ignore_for_file: unused_element, unnecessary_cast

class GetRegionalParametersParameterPolicyMember {
  /// AM policy binding member referring to a Google Cloud resource by user-assigned name. If a resource is deleted and recreated with the same name, the binding will be applicable to the
  /// new resource. Format:
  /// `principal://parametermanager.googleapis.com/projects/{{project}}/name/locations/{{location}}/parameters/{{parameter_id}}`
  final String iamPolicyNamePrincipal;

  /// IAM policy binding member referring to a Google Cloud resource by system-assigned unique identifier.
  /// If a resource is deleted and recreated with the same name, the binding will not be applicable to the
  /// new resource. Format:
  /// `principal://parametermanager.googleapis.com/projects/{{project}}/uid/locations/{{location}}/parameters/{{uid}}`
  final String iamPolicyUidPrincipal;

  GetRegionalParametersParameterPolicyMember({
    required this.iamPolicyNamePrincipal,
    required this.iamPolicyUidPrincipal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iamPolicyNamePrincipal'] = iamPolicyNamePrincipal;
    map['iamPolicyUidPrincipal'] = iamPolicyUidPrincipal;
    return map;
  }

  factory GetRegionalParametersParameterPolicyMember.fromMap(
      Map<String, dynamic> map) {
    return GetRegionalParametersParameterPolicyMember(
      iamPolicyNamePrincipal: map['iamPolicyNamePrincipal'] as String,
      iamPolicyUidPrincipal: map['iamPolicyUidPrincipal'] as String,
    );
  }
}
