// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAcl.
class GetWebAclResult {
  /// ARN of the entity.
  final String arn;
  /// Description of the WebACL that helps with identification.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;
  final String region;
  final String? resourceArn;
  final String scope;

  /// Creates a new [GetWebAclResult].
  /// [arn] ARN of the entity.
  /// [description] Description of the WebACL that helps with identification.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Required.
  /// [resourceArn] Optional.
  /// [scope] Required.
  const GetWebAclResult({
    required this.arn,
    required this.description,
    required this.id,
    this.name,
    required this.region,
    this.resourceArn,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'name': ?name,
      'region': region,
      'resourceArn': ?resourceArn,
      'scope': scope,
    };
  }

  factory GetWebAclResult.fromMap(Map<String, dynamic> map) {
    return GetWebAclResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: map['scope'] as String,
    );
  }
}
