// ignore_for_file: unused_element, unnecessary_cast


class FhirServiceOciArtifact {
  /// A digest of an image within Azure container registry used for export operations of the service instance to narrow the artifacts down.
  final String? digest;
  /// An image within Azure container registry used for export operations of the service instance.
  final String? imageName;
  /// An Azure container registry used for export operations of the service instance.
  final String loginServer;

  /// Creates a new [FhirServiceOciArtifact].
  /// [digest] A digest of an image within Azure container registry used for export operations of the service instance to narrow the artifacts down.
  /// [imageName] An image within Azure container registry used for export operations of the service instance.
  /// [loginServer] An Azure container registry used for export operations of the service instance.
  FhirServiceOciArtifact({
    this.digest,
    this.imageName,
    required this.loginServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'imageName': ?imageName,
      'loginServer': loginServer,
    };
  }

  factory FhirServiceOciArtifact.fromMap(Map<String, dynamic> map) {
    return FhirServiceOciArtifact(
      digest: map['digest'] == null ? null : map['digest'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      loginServer: map['loginServer'] as String,
    );
  }
}

