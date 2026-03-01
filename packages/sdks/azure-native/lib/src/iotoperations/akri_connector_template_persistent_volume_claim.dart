// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplatePersistentVolumeClaim properties.
class AkriConnectorTemplatePersistentVolumeClaim {
  /// The name of the persistent volume claim.
  final String claimName;
  /// The mount path for the persistent volume claim.
  final String mountPath;

  /// Creates a new [AkriConnectorTemplatePersistentVolumeClaim].
  /// [claimName] The name of the persistent volume claim.
  /// [mountPath] The mount path for the persistent volume claim.
  AkriConnectorTemplatePersistentVolumeClaim({
    required this.claimName,
    required this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimName': claimName,
      'mountPath': mountPath,
    };
  }

  factory AkriConnectorTemplatePersistentVolumeClaim.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplatePersistentVolumeClaim(
      claimName: map['claimName'] as String,
      mountPath: map['mountPath'] as String,
    );
  }
}

