// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationsApplicationMountDesc {
  /// Container mount path.
  final pulumi.Input<String> mountPath;

  /// NAS relative file directory.
  final pulumi.Input<String> nasPath;

  /// Creates a new [GetApplicationsApplicationMountDesc].
  /// [mountPath] Container mount path.
  /// [nasPath] NAS relative file directory.
  GetApplicationsApplicationMountDesc({
    required this.mountPath,
    required this.nasPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mountPath': mountPath, 'nasPath': nasPath};
  }

  factory GetApplicationsApplicationMountDesc.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationsApplicationMountDesc(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      nasPath: pulumi.Input.fromValue(map['nasPath'] as String),
    );
  }
}
