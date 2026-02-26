// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Maven remote repository.
class MavenRepositoryResponse {
  /// One of the publicly available Maven repositories supported by Artifact Registry.
  final String publicRepository;

  MavenRepositoryResponse({
    required this.publicRepository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicRepository'] = publicRepository;
    return map;
  }

  factory MavenRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryResponse(
      publicRepository: map['publicRepository'] as String,
    );
  }
}
