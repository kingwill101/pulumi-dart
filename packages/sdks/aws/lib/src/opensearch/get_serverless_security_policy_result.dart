// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServerlessSecurityPolicy.
class GetServerlessSecurityPolicyResult {
  /// The date the security policy was created.
  final String createdDate;

  /// Description of the security policy.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The date the security policy was last modified.
  final String lastModifiedDate;
  final String name;

  /// The JSON policy document without any whitespaces.
  final String policy;

  /// Version of the policy.
  final String policyVersion;
  final String region;
  final String type;

  /// Creates a new [GetServerlessSecurityPolicyResult].
  /// [createdDate] The date the security policy was created.
  /// [description] Description of the security policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModifiedDate] The date the security policy was last modified.
  /// [name] Required.
  /// [policy] The JSON policy document without any whitespaces.
  /// [policyVersion] Version of the policy.
  /// [region] Required.
  /// [type] Required.
  GetServerlessSecurityPolicyResult({
    required this.createdDate,
    required this.description,
    required this.id,
    required this.lastModifiedDate,
    required this.name,
    required this.policy,
    required this.policyVersion,
    required this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': createdDate,
      'description': description,
      'id': id,
      'lastModifiedDate': lastModifiedDate,
      'name': name,
      'policy': policy,
      'policyVersion': policyVersion,
      'region': region,
      'type': type,
    };
  }

  factory GetServerlessSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityPolicyResult(
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastModifiedDate: map['lastModifiedDate'] as String,
      name: map['name'] as String,
      policy: map['policy'] as String,
      policyVersion: map['policyVersion'] as String,
      region: map['region'] as String,
      type: map['type'] as String,
    );
  }
}
