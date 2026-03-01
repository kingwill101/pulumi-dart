// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Python remote repository.
class PythonRepositoryResponse {
  /// One of the publicly available Python repositories supported by Artifact Registry.
  final String publicRepository;

  /// Creates a new [PythonRepositoryResponse].
  /// [publicRepository] One of the publicly available Python repositories supported by Artifact Registry.
  PythonRepositoryResponse({required this.publicRepository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'publicRepository': publicRepository};
  }

  factory PythonRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return PythonRepositoryResponse(
      publicRepository: map['publicRepository'] as String,
    );
  }
}
