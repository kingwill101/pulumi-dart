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
    final map = <String, dynamic>{};
    map['active'] = active;
    map['createdTime'] = createdTime;
    map['description'] = description;
    map['guidance'] = guidance;
    map['id'] = id;
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetProvisioningArtifactsProvisioningArtifactDetail.fromMap(
      Map<String, dynamic> map) {
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
