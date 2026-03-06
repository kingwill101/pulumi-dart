// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpset.
class GetIpsetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetIpsetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  const GetIpsetResult({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetIpsetResult.fromMap(Map<String, dynamic> map) {
    return GetIpsetResult(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

