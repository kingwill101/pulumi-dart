// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerlessAccessPolicy.
class GetServerlessAccessPolicyResult {
  /// Description of the policy. Typically used to store information about the permissions defined in the policy.
  final String? description;
  final String? id;
  final String? name;
  /// JSON policy document to use as the content for the new policy.
  final String? policy;
  /// Version of the policy.
  final String? policyVersion;
  final String? region;
  final String? type;

  /// Creates a new [GetServerlessAccessPolicyResult].
  /// [description] Description of the policy. Typically used to store information about the permissions defined in the policy.
  /// [id] Optional.
  /// [name] Optional.
  /// [policy] JSON policy document to use as the content for the new policy.
  /// [policyVersion] Version of the policy.
  /// [region] Optional.
  /// [type] Optional.
  const GetServerlessAccessPolicyResult({
    this.description,
    this.id,
    this.name,
    this.policy,
    this.policyVersion,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'policy': ?policy,
      'policyVersion': ?policyVersion,
      'region': ?region,
      'type': ?type,
    };
  }

  factory GetServerlessAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessAccessPolicyResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyVersion: (() { final guardedValue = map['policyVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
