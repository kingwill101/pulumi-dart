// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProvisioningArtifactsProvisioningArtifactDetail {
  /// Indicates whether the product version is active.
  final pulumi.Input<bool> active;
  /// The UTC time stamp of the creation time.
  final pulumi.Input<String> createdTime;
  /// The description of the provisioning artifact.
  final pulumi.Input<String> description;
  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.
  final pulumi.Input<String> guidance;
  /// The identifier of the provisioning artifact.
  final pulumi.Input<String> id;
  /// The name of the provisioning artifact.
  final pulumi.Input<String> name;
  /// The type of provisioning artifact.
  final pulumi.Input<String> type;

  /// Creates a new [GetProvisioningArtifactsProvisioningArtifactDetail].
  /// [active] Indicates whether the product version is active.
  /// [createdTime] The UTC time stamp of the creation time.
  /// [description] The description of the provisioning artifact.
  /// [guidance] Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.
  /// [id] The identifier of the provisioning artifact.
  /// [name] The name of the provisioning artifact.
  /// [type] The type of provisioning artifact.
  GetProvisioningArtifactsProvisioningArtifactDetail({
    required this.active,
    required this.createdTime,
    required this.description,
    required this.guidance,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'createdTime': createdTime,
      'description': description,
      'guidance': guidance,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetProvisioningArtifactsProvisioningArtifactDetail.fromMap(Map<String, dynamic> map) {
    return GetProvisioningArtifactsProvisioningArtifactDetail(
      active: pulumi.Input.fromValue(map['active'] as bool),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      guidance: pulumi.Input.fromValue(map['guidance'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

