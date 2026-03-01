// ignore_for_file: unused_element, unnecessary_cast

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfigResponseContainerV1beta1 {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String sandboxType;

  /// Type of the sandbox to use for the node.
  final String type;

  /// Creates a new [SandboxConfigResponseContainerV1beta1].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  /// [type] Type of the sandbox to use for the node.
  SandboxConfigResponseContainerV1beta1({
    required this.sandboxType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sandboxType': sandboxType, 'type': type};
  }

  factory SandboxConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SandboxConfigResponseContainerV1beta1(
      sandboxType: map['sandboxType'] as String,
      type: map['type'] as String,
    );
  }
}
