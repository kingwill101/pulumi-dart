// ignore_for_file: unused_element, unnecessary_cast

class AppImageConfigKernelGatewayImageConfigKernelSpec {
  /// The display name of the kernel.
  final String? displayName;

  /// The name of the kernel.
  final String name;

  AppImageConfigKernelGatewayImageConfigKernelSpec({
    this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['name'] = name;
    return map;
  }

  factory AppImageConfigKernelGatewayImageConfigKernelSpec.fromMap(
      Map<String, dynamic> map) {
    return AppImageConfigKernelGatewayImageConfigKernelSpec(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}
