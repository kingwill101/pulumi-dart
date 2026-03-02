// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectionPolicyPolicyConfig {
  /// The set of instance IDs. This parameter is valid only when resourceMode is set to instanceMode. Only instances whose IDs are included in this set are collected.
  final pulumi.Input<List<String>>? instanceIds;
  /// The set of regions to which instances belong. This parameter is valid only when resourceMode is set to attributeMode and supports wildcards. If the region set filter is an empty array, no region-based filtering is applied, and all instances satisfy the region condition. Otherwise, only instances whose region attribute is included in this region set are collected. The region set and resource tags work together. An instance is collected only if it satisfies both conditions.
  final pulumi.Input<List<String>>? regions;
  /// Resource collection mode. If set to all, all instances under the account are collected into the default Logstore. If set to attributeMode, instances are filtered based on their region attributes and resource tags. If set to instanceMode, instances are filtered by their instance IDs.
  final pulumi.Input<String> resourceMode;
  /// Resource tags. This parameter is valid only when resourceMode is set to attributeMode.
  /// If the resource tag filter is empty, no filtering by resource tags is applied, and all instances satisfy the resource tag condition. Otherwise, only instances whose resource tag attributes fully match the specified resource tag configuration are collected.
  /// Resource tags and the region set of the instance work together. An instance is collected only if it satisfies both conditions.
  final pulumi.Input<Map<String, String>>? resourceTags;

  /// Creates a new [CollectionPolicyPolicyConfig].
  /// [instanceIds] The set of instance IDs. This parameter is valid only when resourceMode is set to instanceMode. Only instances whose IDs are included in this set are collected.
  /// [regions] The set of regions to which instances belong. This parameter is valid only when resourceMode is set to attributeMode and supports wildcards. If the region set filter is an empty array, no region-based filtering is applied, and all instances satisfy the region condition. Otherwise, only instances whose region attribute is included in this region set are collected. The region set and resource tags work together. An instance is collected only if it satisfies both conditions.
  /// [resourceMode] Resource collection mode. If set to all, all instances under the account are collected into the default Logstore. If set to attributeMode, instances are filtered based on their region attributes and resource tags. If set to instanceMode, instances are filtered by their instance IDs.
  /// [resourceTags] Resource tags. This parameter is valid only when resourceMode is set to attributeMode.
  CollectionPolicyPolicyConfig({
    this.instanceIds,
    this.regions,
    required this.resourceMode,
    this.resourceTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceIds': ?instanceIds,
      'regions': ?regions,
      'resourceMode': resourceMode,
      'resourceTags': ?resourceTags,
    };
  }

  factory CollectionPolicyPolicyConfig.fromMap(Map<String, dynamic> map) {
    return CollectionPolicyPolicyConfig(
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds']! as List).cast<String>()).input(),
      regions: map['regions'] == null ? null : ((map['regions']! as List).cast<String>()).input(),
      resourceMode: (map['resourceMode'] as String).input(),
      resourceTags: map['resourceTags'] == null ? null : ((map['resourceTags']! as Map).cast<String, String>()).input(),
    );
  }
}

