// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Goo package repository. These are added to a repo file that is managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceGooRepository {
  /// The name of the repository.
  final String name;

  /// The url of the repository.
  final String url;

  /// Creates a new [OSPolicyResourceRepositoryResourceGooRepository].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  OSPolicyResourceRepositoryResourceGooRepository({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory OSPolicyResourceRepositoryResourceGooRepository.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceGooRepository(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
