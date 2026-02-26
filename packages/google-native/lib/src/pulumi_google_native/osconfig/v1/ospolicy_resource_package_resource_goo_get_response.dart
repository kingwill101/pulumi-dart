// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGetResponse {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceGooGetResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceGooGetResponse.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceGooGetResponse(
      name: map['name'] as String,
    );
  }
}
