// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The destination information for the delivery of the report.
class ReportDeliveryDestination {
  /// The name of the container where reports will be uploaded.
  final pulumi.Input<String> container;
  /// The resource id of the storage account where reports will be delivered.
  final pulumi.Input<String> resourceId;
  /// The name of the directory where reports will be uploaded.
  final pulumi.Input<String>? rootFolderPath;

  /// Creates a new [ReportDeliveryDestination].
  /// [container] The name of the container where reports will be uploaded.
  /// [resourceId] The resource id of the storage account where reports will be delivered.
  /// [rootFolderPath] The name of the directory where reports will be uploaded.
  ReportDeliveryDestination({
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

  factory ReportDeliveryDestination.fromMap(Map<String, dynamic> map) {
    return ReportDeliveryDestination(
      container: (map['container'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      rootFolderPath: map['rootFolderPath'] == null ? null : (map['rootFolderPath'] as String).input(),
    );
  }
}

