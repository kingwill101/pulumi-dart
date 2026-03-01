// ignore_for_file: unused_element, unnecessary_cast

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUMOsconfigV1alpha {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceYUMOsconfigV1alpha].
  /// [name] Package name.
  OSPolicyResourcePackageResourceYUMOsconfigV1alpha({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory OSPolicyResourcePackageResourceYUMOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceYUMOsconfigV1alpha(
      name: map['name'] as String,
    );
  }
}
