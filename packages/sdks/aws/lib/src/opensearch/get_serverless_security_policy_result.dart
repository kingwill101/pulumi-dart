// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessSecurityPolicy.
class GetServerlessSecurityPolicyResult {
  /// The date the security policy was created.
  final String? createdDate;
  /// Description of the security policy.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The date the security policy was last modified.
  final String? lastModifiedDate;
  final String? name;
  /// The JSON policy document without any whitespaces.
  final String? policy;
  /// Version of the policy.
  final String? policyVersion;
  final String? region;
  final String? type;

  /// Creates a new [GetServerlessSecurityPolicyResult].
  /// [createdDate] The date the security policy was created.
  /// [description] Description of the security policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModifiedDate] The date the security policy was last modified.
  /// [name] Optional.
  /// [policy] The JSON policy document without any whitespaces.
  /// [policyVersion] Version of the policy.
  /// [region] Optional.
  /// [type] Optional.
  const GetServerlessSecurityPolicyResult({
    this.createdDate,
    this.description,
    this.id,
    this.lastModifiedDate,
    this.name,
    this.policy,
    this.policyVersion,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'description': ?description,
      'id': ?id,
      'lastModifiedDate': ?lastModifiedDate,
      'name': ?name,
      'policy': ?policy,
      'policyVersion': ?policyVersion,
      'region': ?region,
      'type': ?type,
    };
  }

  factory GetServerlessSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityPolicyResult(
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyVersion: (() { final guardedValue = map['policyVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
