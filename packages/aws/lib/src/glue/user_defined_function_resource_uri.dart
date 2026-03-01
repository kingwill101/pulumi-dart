// ignore_for_file: unused_element, unnecessary_cast


class UserDefinedFunctionResourceUri {
  /// The type of the resource. can be one of `JAR`, `FILE`, and `ARCHIVE`.
  final String resourceType;
  /// The URI for accessing the resource.
  final String uri;

  /// Creates a new [UserDefinedFunctionResourceUri].
  /// [resourceType] The type of the resource. can be one of `JAR`, `FILE`, and `ARCHIVE`.
  /// [uri] The URI for accessing the resource.
  UserDefinedFunctionResourceUri({
    required this.resourceType,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'uri': uri,
    };
  }

  factory UserDefinedFunctionResourceUri.fromMap(Map<String, dynamic> map) {
    return UserDefinedFunctionResourceUri(
      resourceType: map['resourceType'] as String,
      uri: map['uri'] as String,
    );
  }
}

