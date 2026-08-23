// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageBuilderVpcConfig {
  /// Identifiers of the security groups for the image builder or image builder.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Identifier of the subnet to which a network interface is attached from the image builder instance.
  final pulumi.Input<List<String>>? subnetIds;

  /// Creates a new [ImageBuilderVpcConfig].
  /// [securityGroupIds] Identifiers of the security groups for the image builder or image builder.
  /// [subnetIds] Identifier of the subnet to which a network interface is attached from the image builder instance.
  const ImageBuilderVpcConfig({
    this.securityGroupIds,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
    };
  }

  factory ImageBuilderVpcConfig.fromMap(Map<String, dynamic> map) {
    return ImageBuilderVpcConfig(
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
