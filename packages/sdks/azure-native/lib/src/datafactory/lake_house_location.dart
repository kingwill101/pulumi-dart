// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of Microsoft Fabric Lakehouse Files dataset.
class LakeHouseLocation {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;

  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;

  /// Type of dataset storage location.
  /// Expected value is 'LakeHouseLocation'.
  final pulumi.Input<String> type;

  /// Creates a new [LakeHouseLocation].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  LakeHouseLocation({this.fileName, this.folderPath, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'folderPath': ?folderPath,
      'type': type,
    };
  }

  factory LakeHouseLocation.fromMap(Map<String, dynamic> map) {
    return LakeHouseLocation(
      fileName: (() {
        final guardedValue = map['fileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      folderPath: (() {
        final guardedValue = map['folderPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
