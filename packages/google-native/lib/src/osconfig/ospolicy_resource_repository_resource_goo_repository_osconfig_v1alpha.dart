// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Goo package repository. These are added to a repo file that is managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha {
  /// The name of the repository.
  final String name;

  /// The url of the repository.
  final String url;

  /// Creates a new [OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'url': url};
  }

  factory OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
