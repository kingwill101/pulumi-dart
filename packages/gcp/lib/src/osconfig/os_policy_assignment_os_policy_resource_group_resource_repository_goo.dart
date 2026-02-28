// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo {
  /// The name of the repository.
  final String name;

  /// The url of the repository.
  final String url;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
