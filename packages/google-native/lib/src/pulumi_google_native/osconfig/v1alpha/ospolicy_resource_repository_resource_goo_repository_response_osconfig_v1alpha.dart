// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Goo package repository. These are added to a repo file that is managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha {
  /// The name of the repository.
  final String name;

  /// The url of the repository.
  final String url;

  OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
