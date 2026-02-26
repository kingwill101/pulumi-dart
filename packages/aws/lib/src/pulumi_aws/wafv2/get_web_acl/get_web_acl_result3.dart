// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWebAcl.
class GetWebAclResult3 {
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

  GetWebAclResult3({
    required this.arn,
    required this.description,
    required this.id,
    this.name,
    required this.region,
    this.resourceArn,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['region'] = region;
    final resourceArnValue = resourceArn;
    if (resourceArnValue != null) {
      map['resourceArn'] = resourceArnValue;
    }
    map['scope'] = scope;
    return map;
  }

  factory GetWebAclResult3.fromMap(Map<String, dynamic> map) {
    return GetWebAclResult3(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] as String,
      resourceArn:
          map['resourceArn'] == null ? null : map['resourceArn'] as String,
      scope: map['scope'] as String,
    );
  }
}
