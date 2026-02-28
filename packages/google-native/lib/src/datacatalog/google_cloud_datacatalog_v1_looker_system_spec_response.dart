// ignore_for_file: unused_element, unnecessary_cast


/// Specification that applies to entries that are part `LOOKER` system (user_specified_type)
class GoogleCloudDatacatalogV1LookerSystemSpecResponse {
  /// Name of the parent Looker Instance. Empty if it does not exist.
  final String parentInstanceDisplayName;
  /// ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`
  final String parentInstanceId;
  /// Name of the parent Model. Empty if it does not exist.
  final String parentModelDisplayName;
  /// ID of the parent Model. Empty if it does not exist.
  final String parentModelId;
  /// Name of the parent View. Empty if it does not exist.
  final String parentViewDisplayName;
  /// ID of the parent View. Empty if it does not exist.
  final String parentViewId;

  /// Creates a new [GoogleCloudDatacatalogV1LookerSystemSpecResponse].
  /// [parentInstanceDisplayName] Name of the parent Looker Instance. Empty if it does not exist.
  /// [parentInstanceId] ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`
  /// [parentModelDisplayName] Name of the parent Model. Empty if it does not exist.
  /// [parentModelId] ID of the parent Model. Empty if it does not exist.
  /// [parentViewDisplayName] Name of the parent View. Empty if it does not exist.
  /// [parentViewId] ID of the parent View. Empty if it does not exist.
  GoogleCloudDatacatalogV1LookerSystemSpecResponse({
    required this.parentInstanceDisplayName,
    required this.parentInstanceId,
    required this.parentModelDisplayName,
    required this.parentModelId,
    required this.parentViewDisplayName,
    required this.parentViewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentInstanceDisplayName': parentInstanceDisplayName,
      'parentInstanceId': parentInstanceId,
      'parentModelDisplayName': parentModelDisplayName,
      'parentModelId': parentModelId,
      'parentViewDisplayName': parentViewDisplayName,
      'parentViewId': parentViewId,
    };
  }

  factory GoogleCloudDatacatalogV1LookerSystemSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1LookerSystemSpecResponse(
      parentInstanceDisplayName: map['parentInstanceDisplayName'] as String,
      parentInstanceId: map['parentInstanceId'] as String,
      parentModelDisplayName: map['parentModelDisplayName'] as String,
      parentModelId: map['parentModelId'] as String,
      parentViewDisplayName: map['parentViewDisplayName'] as String,
      parentViewId: map['parentViewId'] as String,
    );
  }
}

