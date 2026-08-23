// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplatePersistentVolumeClaim properties.
class AkriConnectorTemplatePersistentVolumeClaimResponse {
  /// The name of the persistent volume claim.
  final pulumi.Input<String> claimName;
  /// The mount path for the persistent volume claim.
  final pulumi.Input<String> mountPath;

  /// Creates a new [AkriConnectorTemplatePersistentVolumeClaimResponse].
  /// [claimName] The name of the persistent volume claim.
  /// [mountPath] The mount path for the persistent volume claim.
  const AkriConnectorTemplatePersistentVolumeClaimResponse({
    required this.claimName,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimName': claimName,
      'mountPath': mountPath,
    };
  }

  factory AkriConnectorTemplatePersistentVolumeClaimResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplatePersistentVolumeClaimResponse(
      claimName: pulumi.Input.fromValue(map['claimName'] as String),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
    );
  }
}
