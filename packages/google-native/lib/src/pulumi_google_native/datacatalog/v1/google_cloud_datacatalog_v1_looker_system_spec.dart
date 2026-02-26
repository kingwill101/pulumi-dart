// ignore_for_file: unused_element, unnecessary_cast

/// Specification that applies to entries that are part `LOOKER` system (user_specified_type)
class GoogleCloudDatacatalogV1LookerSystemSpec {
  /// Name of the parent Looker Instance. Empty if it does not exist.
  final String? parentInstanceDisplayName;

  /// ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`
  final String? parentInstanceId;

  /// Name of the parent Model. Empty if it does not exist.
  final String? parentModelDisplayName;

  /// ID of the parent Model. Empty if it does not exist.
  final String? parentModelId;

  /// Name of the parent View. Empty if it does not exist.
  final String? parentViewDisplayName;

  /// ID of the parent View. Empty if it does not exist.
  final String? parentViewId;

  GoogleCloudDatacatalogV1LookerSystemSpec({
    this.parentInstanceDisplayName,
    this.parentInstanceId,
    this.parentModelDisplayName,
    this.parentModelId,
    this.parentViewDisplayName,
    this.parentViewId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parentInstanceDisplayNameValue = parentInstanceDisplayName;
    if (parentInstanceDisplayNameValue != null) {
      map['parentInstanceDisplayName'] = parentInstanceDisplayNameValue;
    }
    final parentInstanceIdValue = parentInstanceId;
    if (parentInstanceIdValue != null) {
      map['parentInstanceId'] = parentInstanceIdValue;
    }
    final parentModelDisplayNameValue = parentModelDisplayName;
    if (parentModelDisplayNameValue != null) {
      map['parentModelDisplayName'] = parentModelDisplayNameValue;
    }
    final parentModelIdValue = parentModelId;
    if (parentModelIdValue != null) {
      map['parentModelId'] = parentModelIdValue;
    }
    final parentViewDisplayNameValue = parentViewDisplayName;
    if (parentViewDisplayNameValue != null) {
      map['parentViewDisplayName'] = parentViewDisplayNameValue;
    }
    final parentViewIdValue = parentViewId;
    if (parentViewIdValue != null) {
      map['parentViewId'] = parentViewIdValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1LookerSystemSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1LookerSystemSpec(
      parentInstanceDisplayName: map['parentInstanceDisplayName'] == null
          ? null
          : map['parentInstanceDisplayName'] as String,
      parentInstanceId: map['parentInstanceId'] == null
          ? null
          : map['parentInstanceId'] as String,
      parentModelDisplayName: map['parentModelDisplayName'] == null
          ? null
          : map['parentModelDisplayName'] as String,
      parentModelId:
          map['parentModelId'] == null ? null : map['parentModelId'] as String,
      parentViewDisplayName: map['parentViewDisplayName'] == null
          ? null
          : map['parentViewDisplayName'] as String,
      parentViewId:
          map['parentViewId'] == null ? null : map['parentViewId'] as String,
    );
  }
}
