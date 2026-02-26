// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUMResponse2 {
  /// Package name.
  final String name;

  OSPolicyResourcePackageResourceYUMResponse2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceYUMResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUMResponse2(
      name: map['name'] as String,
    );
  }
}
