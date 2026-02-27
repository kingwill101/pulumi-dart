// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGetOsconfigV1alpha {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceGooGetOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceGooGetOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceGooGetOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}
