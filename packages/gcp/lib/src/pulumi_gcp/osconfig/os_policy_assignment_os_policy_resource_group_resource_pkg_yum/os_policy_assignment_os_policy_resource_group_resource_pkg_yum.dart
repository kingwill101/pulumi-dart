// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum {
  /// Package name.
  final String name;

  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum(
      name: map['name'] as String,
    );
  }
}
