// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUMResponse {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceYUMResponse].
  /// [name] Package name.
  OSPolicyResourcePackageResourceYUMResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OSPolicyResourcePackageResourceYUMResponse.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUMResponse(
      name: map['name'] as String,
    );
  }
}
