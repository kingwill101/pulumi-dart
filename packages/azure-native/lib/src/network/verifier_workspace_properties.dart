// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Verifier Workspace resource.
class VerifierWorkspaceProperties {
  final String? description;

  /// Creates a new [VerifierWorkspaceProperties].
  /// [description] Optional.
  VerifierWorkspaceProperties({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory VerifierWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return VerifierWorkspaceProperties(
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

