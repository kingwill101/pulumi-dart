// ignore_for_file: unused_element, unnecessary_cast

class GetProvisioningArtifactsProvisioningArtifactDetail {
  /// Indicates whether the product version is active.
  final bool active;

  /// The UTC time stamp of the creation time.
  final String createdTime;

  /// The description of the provisioning artifact.
  final String description;

  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.
  final String guidance;

  /// The identifier of the provisioning artifact.
  final String id;

  /// The name of the provisioning artifact.
  final String name;

  /// The type of provisioning artifact.
  final String type;

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

  factory GetProvisioningArtifactsProvisioningArtifactDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetProvisioningArtifactsProvisioningArtifactDetail(
      active: map['active'] as bool,
      createdTime: map['createdTime'] as String,
      description: map['description'] as String,
      guidance: map['guidance'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
