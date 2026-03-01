// ignore_for_file: unused_element, unnecessary_cast


/// Link to an application package inside the batch account
class ApplicationPackageReference {
  /// The ID of the application package to install. This must be inside the same batch account as the pool. This can either be a reference to a specific version or the default version if one exists.
  final String id;
  /// If this is omitted, and no default version is specified for this application, the request fails with the error code InvalidApplicationPackageReferences. If you are calling the REST API directly, the HTTP status code is 409.
  final String? version;

  /// Creates a new [ApplicationPackageReference].
  /// [id] The ID of the application package to install. This must be inside the same batch account as the pool. This can either be a reference to a specific version or the default version if one exists.
  /// [version] If this is omitted, and no default version is specified for this application, the request fails with the error code InvalidApplicationPackageReferences. If you are calling the REST API directly, the HTTP status code is 409.
  ApplicationPackageReference({
    required this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'version': ?version,
    };
  }

  factory ApplicationPackageReference.fromMap(Map<String, dynamic> map) {
    return ApplicationPackageReference(
      id: map['id'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

