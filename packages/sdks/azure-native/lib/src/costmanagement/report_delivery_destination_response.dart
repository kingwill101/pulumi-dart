// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The destination information for the delivery of the report.
class ReportDeliveryDestinationResponse {
  /// The name of the container where reports will be uploaded.
  final pulumi.Input<String> container;
  /// The resource id of the storage account where reports will be delivered.
  final pulumi.Input<String> resourceId;
  /// The name of the directory where reports will be uploaded.
  final pulumi.Input<String>? rootFolderPath;

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
      container: pulumi.Input.fromValue(map['container'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      rootFolderPath: (() { final guardedValue = map['rootFolderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

