// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGet {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceGooGet({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceGooGet.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceGooGet(
      name: map['name'] as String,
    );
  }
}
