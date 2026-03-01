// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplatePersistentVolumeClaim properties.
class AkriConnectorTemplatePersistentVolumeClaimResponse {
  /// The name of the persistent volume claim.
  final String claimName;
  /// The mount path for the persistent volume claim.
  final String mountPath;

  /// Creates a new [AkriConnectorTemplatePersistentVolumeClaimResponse].
  /// [claimName] The name of the persistent volume claim.
  /// [mountPath] The mount path for the persistent volume claim.
  AkriConnectorTemplatePersistentVolumeClaimResponse({
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
      claimName: map['claimName'] as String,
      mountPath: map['mountPath'] as String,
    );
  }
}

