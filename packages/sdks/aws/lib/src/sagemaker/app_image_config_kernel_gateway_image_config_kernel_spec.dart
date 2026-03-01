// ignore_for_file: unused_element, unnecessary_cast


class AppImageConfigKernelGatewayImageConfigKernelSpec {
  /// The display name of the kernel.
  final String? displayName;
  /// The name of the kernel.
  final String name;

  /// Creates a new [AppImageConfigKernelGatewayImageConfigKernelSpec].
  /// [displayName] The display name of the kernel.
  /// [name] The name of the kernel.
  AppImageConfigKernelGatewayImageConfigKernelSpec({
    this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': name,
    };
  }

  factory AppImageConfigKernelGatewayImageConfigKernelSpec.fromMap(Map<String, dynamic> map) {
    return AppImageConfigKernelGatewayImageConfigKernelSpec(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}

