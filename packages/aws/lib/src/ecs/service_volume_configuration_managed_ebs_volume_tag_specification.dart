// ignore_for_file: unused_element, unnecessary_cast

class ServiceVolumeConfigurationManagedEbsVolumeTagSpecification {
  /// Determines whether to propagate the tags from the task definition to the Amazon EBS volume.
  final String? propagateTags;

  /// The type of volume resource. Valid values, `volume`.
  final String resourceType;

  /// The tags applied to this Amazon EBS volume. `AmazonECSCreated` and `AmazonECSManaged` are reserved tags that can't be used.
  final Map<String, String>? tags;

  /// Creates a new [ServiceVolumeConfigurationManagedEbsVolumeTagSpecification].
  /// [propagateTags] Determines whether to propagate the tags from the task definition to the Amazon EBS volume.
  /// [resourceType] The type of volume resource. Valid values, `volume`.
  /// [tags] The tags applied to this Amazon EBS volume. `AmazonECSCreated` and `AmazonECSManaged` are reserved tags that can't be used.
  ServiceVolumeConfigurationManagedEbsVolumeTagSpecification({
    this.propagateTags,
    required this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propagateTagsValue = propagateTags;
    if (propagateTagsValue != null) {
      map['propagateTags'] = propagateTagsValue;
    }
    map['resourceType'] = resourceType;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ServiceVolumeConfigurationManagedEbsVolumeTagSpecification.fromMap(
      Map<String, dynamic> map) {
    return ServiceVolumeConfigurationManagedEbsVolumeTagSpecification(
      propagateTags:
          map['propagateTags'] == null ? null : map['propagateTags'] as String,
      resourceType: map['resourceType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
