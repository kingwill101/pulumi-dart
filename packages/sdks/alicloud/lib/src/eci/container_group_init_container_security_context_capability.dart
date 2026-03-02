// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupInitContainerSecurityContextCapability {
  final pulumi.Input<List<String>>? adds;

  /// Creates a new [ContainerGroupInitContainerSecurityContextCapability].
  /// [adds] Optional.
  ContainerGroupInitContainerSecurityContextCapability({
    this.adds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adds': ?adds,
    };
  }

  factory ContainerGroupInitContainerSecurityContextCapability.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerSecurityContextCapability(
      adds: map['adds'] == null ? null : ((map['adds'] as List).cast<String>()).input(),
    );
  }
}

