// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Python remote repository.
class PythonRepositoryResponse {
  /// One of the publicly available Python repositories supported by Artifact Registry.
  final String publicRepository;

  PythonRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicRepository'] = publicRepository;
    return map;
  }

  factory PythonRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return PythonRepositoryResponse(
      publicRepository: map['publicRepository'] as String,
    );
  }
}
