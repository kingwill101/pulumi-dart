// ignore_for_file: unused_element, unnecessary_cast

class UserDefinedFunctionResourceUri {
  /// The type of the resource. can be one of `JAR`, `FILE`, and `ARCHIVE`.
  final String resourceType;

  /// The URI for accessing the resource.
  final String uri;

  UserDefinedFunctionResourceUri({
    required this.resourceType,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceType'] = resourceType;
    map['uri'] = uri;
    return map;
  }

  factory UserDefinedFunctionResourceUri.fromMap(Map<String, dynamic> map) {
    return UserDefinedFunctionResourceUri(
      resourceType: map['resourceType'] as String,
      uri: map['uri'] as String,
    );
  }
}
