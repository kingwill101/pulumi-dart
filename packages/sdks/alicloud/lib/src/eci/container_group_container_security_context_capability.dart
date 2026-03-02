// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerSecurityContextCapability {
  final pulumi.Input<List<String>>? adds;

  /// Creates a new [ContainerGroupContainerSecurityContextCapability].
  /// [adds] Optional.
  ContainerGroupContainerSecurityContextCapability({
    this.adds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adds': ?adds,
    };
  }

  factory ContainerGroupContainerSecurityContextCapability.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerSecurityContextCapability(
      adds: map['adds'] == null ? null : ((map['adds']! as List).cast<String>()).input(),
    );
  }
}

