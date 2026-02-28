// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessAccessPolicy.
class GetServerlessAccessPolicyResult {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  final String description;
  final String id;
  final String name;
  /// JSON policy document to use as the content for the new policy.
  final String policy;
  /// Version of the policy.
  final String policyVersion;
  final String region;
  final String type;

  /// Creates a new [GetServerlessAccessPolicyResult].
  /// [description] Description of the policy. Typically used to store information about the permissions defined in the policy.
  /// [id] Required.
  /// [name] Required.
  /// [policy] JSON policy document to use as the content for the new policy.
  /// [policyVersion] Version of the policy.
  /// [region] Required.
  /// [type] Required.
  GetServerlessAccessPolicyResult({
    required this.description,
    required this.id,
    required this.name,
    required this.policy,
    required this.policyVersion,
    required this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'name': name,
      'policy': policy,
      'policyVersion': policyVersion,
      'region': region,
      'type': type,
    };
  }

  factory GetServerlessAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessAccessPolicyResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      policy: map['policy'] as String,
      policyVersion: map['policyVersion'] as String,
      region: map['region'] as String,
      type: map['type'] as String,
    );
  }
}

