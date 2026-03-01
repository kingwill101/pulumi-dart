// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationsApplicationMountDesc {
  /// Container mount path.
  final String mountPath;
  /// NAS relative file directory.
  final String nasPath;

  /// Creates a new [GetApplicationsApplicationMountDesc].
  /// [mountPath] Container mount path.
  /// [nasPath] NAS relative file directory.
  GetApplicationsApplicationMountDesc({
    required this.mountPath,
    required this.nasPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'nasPath': nasPath,
    };
  }

  factory GetApplicationsApplicationMountDesc.fromMap(Map<String, dynamic> map) {
    return GetApplicationsApplicationMountDesc(
      mountPath: map['mountPath'] as String,
      nasPath: map['nasPath'] as String,
    );
  }
}

