// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha].
  /// [name] Package name.
  OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}
