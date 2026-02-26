// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt {
  /// Package name.
  final String name;

  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt(
      name: map['name'] as String,
    );
  }
}
