// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGetResponse2 {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceGooGetResponse2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceGooGetResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceGooGetResponse2(
      name: map['name'] as String,
    );
  }
}
