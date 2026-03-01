// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAcl.
class GetWebAclResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetWebAclResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  GetWebAclResult({
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetWebAclResult.fromMap(Map<String, dynamic> map) {
    return GetWebAclResult(
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

