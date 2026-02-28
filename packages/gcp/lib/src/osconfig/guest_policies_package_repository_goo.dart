// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesPackageRepositoryGoo {
  /// The name of the repository.
  final String name;

  /// The url of the repository.
  final String url;

  /// Creates a new [GuestPoliciesPackageRepositoryGoo].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  GuestPoliciesPackageRepositoryGoo({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory GuestPoliciesPackageRepositoryGoo.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesPackageRepositoryGoo(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
