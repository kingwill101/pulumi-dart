// ignore_for_file: unused_element, unnecessary_cast

class RecorderRecordingGroupExclusionByResourceType {
  /// A list that specifies the types of AWS resources for which AWS Config excludes records configuration changes. See [relevant part of AWS Docs](http://docs.aws.amazon.com/config/latest/APIReference/API_ResourceIdentifier.html#config-Type-ResourceIdentifier-resourceType) for available types.
  final List<String>? resourceTypes;

  RecorderRecordingGroupExclusionByResourceType({
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = resourceTypesValue;
    }
    return map;
  }

  factory RecorderRecordingGroupExclusionByResourceType.fromMap(
      Map<String, dynamic> map) {
    return RecorderRecordingGroupExclusionByResourceType(
      resourceTypes: map['resourceTypes'] == null
          ? null
          : (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
