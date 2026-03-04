// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppImageConfigKernelGatewayImageConfigKernelSpec {
  /// The display name of the kernel.
  final pulumi.Input<String>? displayName;

  /// The name of the kernel.
  final pulumi.Input<String> name;

  /// Creates a new [AppImageConfigKernelGatewayImageConfigKernelSpec].
  /// [displayName] The display name of the kernel.
  /// [name] The name of the kernel.
  AppImageConfigKernelGatewayImageConfigKernelSpec({
    this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'name': name};
  }

  factory AppImageConfigKernelGatewayImageConfigKernelSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppImageConfigKernelGatewayImageConfigKernelSpec(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
