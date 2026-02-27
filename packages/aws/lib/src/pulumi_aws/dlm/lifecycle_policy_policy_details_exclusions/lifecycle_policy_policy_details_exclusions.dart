// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsExclusions {
  /// Indicates whether to exclude volumes that are attached to instances as the boot volume. To exclude boot volumes, specify `true`.
  final bool? excludeBootVolumes;

  /// Map specifies whether to exclude volumes that have specific tags.
  final Map<String, String>? excludeTags;

  /// List specifies the volume types to exclude.
  final List<String>? excludeVolumeTypes;

  LifecyclePolicyPolicyDetailsExclusions({
    this.excludeBootVolumes,
    this.excludeTags,
    this.excludeVolumeTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeBootVolumesValue = excludeBootVolumes;
    if (excludeBootVolumesValue != null) {
      map['excludeBootVolumes'] = excludeBootVolumesValue;
    }
    final excludeTagsValue = excludeTags;
    if (excludeTagsValue != null) {
      map['excludeTags'] = excludeTagsValue;
    }
    final excludeVolumeTypesValue = excludeVolumeTypes;
    if (excludeVolumeTypesValue != null) {
      map['excludeVolumeTypes'] = excludeVolumeTypesValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsExclusions.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsExclusions(
      excludeBootVolumes: map['excludeBootVolumes'] == null
          ? null
          : map['excludeBootVolumes'] as bool,
      excludeTags: map['excludeTags'] == null
          ? null
          : (map['excludeTags'] as Map).cast<String, String>(),
      excludeVolumeTypes: map['excludeVolumeTypes'] == null
          ? null
          : (map['excludeVolumeTypes'] as List).cast<String>(),
    );
  }
}
