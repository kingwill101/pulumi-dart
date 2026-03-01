// ignore_for_file: unused_element, unnecessary_cast


/// The destination information for the delivery of the report.
class ReportDeliveryDestinationResponse {
  /// The name of the container where reports will be uploaded.
  final String container;
  /// The resource id of the storage account where reports will be delivered.
  final String resourceId;
  /// The name of the directory where reports will be uploaded.
  final String? rootFolderPath;

  /// Creates a new [ReportDeliveryDestinationResponse].
  /// [container] The name of the container where reports will be uploaded.
  /// [resourceId] The resource id of the storage account where reports will be delivered.
  /// [rootFolderPath] The name of the directory where reports will be uploaded.
  ReportDeliveryDestinationResponse({
    required this.container,
    required this.resourceId,
    this.rootFolderPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'resourceId': resourceId,
      'rootFolderPath': ?rootFolderPath,
    };
  }

  factory ReportDeliveryDestinationResponse.fromMap(Map<String, dynamic> map) {
    return ReportDeliveryDestinationResponse(
      container: map['container'] as String,
      resourceId: map['resourceId'] as String,
      rootFolderPath: map['rootFolderPath'] == null ? null : map['rootFolderPath'] as String,
    );
  }
}

