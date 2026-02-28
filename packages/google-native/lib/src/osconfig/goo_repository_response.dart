// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Goo package repository. These is added to a repo file that is stored at C:/ProgramData/GooGet/repos/google_osconfig.repo.
class GooRepositoryResponse {
  /// The name of the repository.
  final String name;

  /// The url of the repository.
  final String url;

  /// Creates a new [GooRepositoryResponse].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  GooRepositoryResponse({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory GooRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return GooRepositoryResponse(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
