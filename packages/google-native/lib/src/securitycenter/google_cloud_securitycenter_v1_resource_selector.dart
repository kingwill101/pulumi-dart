// ignore_for_file: unused_element, unnecessary_cast

/// Resource for selecting resource type.
class GoogleCloudSecuritycenterV1ResourceSelector {
  /// The resource types to run the detector on.
  final List<String>? resourceTypes;

  /// Creates a new [GoogleCloudSecuritycenterV1ResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  GoogleCloudSecuritycenterV1ResourceSelector({
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

  factory GoogleCloudSecuritycenterV1ResourceSelector.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudSecuritycenterV1ResourceSelector(
      resourceTypes: map['resourceTypes'] == null
          ? null
          : (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
