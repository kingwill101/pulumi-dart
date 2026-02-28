// ignore_for_file: unused_element, unnecessary_cast


class LifecyclePolicyPolicyDetailsExclusions {
  /// Indicates whether to exclude volumes that are attached to instances as the boot volume. To exclude boot volumes, specify `true`.
  final bool? excludeBootVolumes;
  /// Map specifies whether to exclude volumes that have specific tags.
  final Map<String, String>? excludeTags;
  /// List specifies the volume types to exclude.
  final List<String>? excludeVolumeTypes;

  /// Creates a new [LifecyclePolicyPolicyDetailsExclusions].
  /// [excludeBootVolumes] Indicates whether to exclude volumes that are attached to instances as the boot volume. To exclude boot volumes, specify `true`.
  /// [excludeTags] Map specifies whether to exclude volumes that have specific tags.
  /// [excludeVolumeTypes] List specifies the volume types to exclude.
  LifecyclePolicyPolicyDetailsExclusions({
    this.excludeBootVolumes,
    this.excludeTags,
    this.excludeVolumeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeBootVolumes': ?excludeBootVolumes,
      'excludeTags': ?excludeTags,
      'excludeVolumeTypes': ?excludeVolumeTypes,
    };
  }

  factory LifecyclePolicyPolicyDetailsExclusions.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsExclusions(
      excludeBootVolumes: map['excludeBootVolumes'] == null ? null : map['excludeBootVolumes'] as bool,
      excludeTags: map['excludeTags'] == null ? null : (map['excludeTags'] as Map).cast<String, String>(),
      excludeVolumeTypes: map['excludeVolumeTypes'] == null ? null : (map['excludeVolumeTypes'] as List).cast<String>(),
    );
  }
}

