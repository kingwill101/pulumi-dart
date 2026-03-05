// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the operation performed on the gallery image
class GalleryImageStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the gallery image
  final pulumi.Input<String>? operationId;
  /// The status of the operation performed on the gallery image [Succeeded, Failed, InProgress]
  final pulumi.Input<String> status;

  /// Creates a new [GalleryImageStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the gallery image
  /// [status] The status of the operation performed on the gallery image [Succeeded, Failed, InProgress]
  GalleryImageStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory GalleryImageStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageStatusProvisioningStatusResponse(
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

