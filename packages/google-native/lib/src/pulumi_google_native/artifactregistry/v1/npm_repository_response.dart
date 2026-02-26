// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Npm remote repository.
class NpmRepositoryResponse {
  /// One of the publicly available Npm repositories supported by Artifact Registry.
  final String publicRepository;

  NpmRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicRepository'] = publicRepository;
    return map;
  }

  factory NpmRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return NpmRepositoryResponse(
      publicRepository: map['publicRepository'] as String,
    );
  }
}
