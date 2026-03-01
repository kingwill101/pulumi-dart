// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGetResponse {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceGooGetResponse].
  /// [name] Package name.
  OSPolicyResourcePackageResourceGooGetResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory OSPolicyResourcePackageResourceGooGetResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceGooGetResponse(
      name: map['name'] as String,
    );
  }
}
