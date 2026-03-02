// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of ftp server dataset.
class FtpServerLocation {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'FtpServerLocation'.
  final pulumi.Input<String> type;

  /// Creates a new [FtpServerLocation].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  FtpServerLocation({
    this.fileName,
    this.folderPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'folderPath': ?folderPath,
      'type': type,
    };
  }

  factory FtpServerLocation.fromMap(Map<String, dynamic> map) {
    return FtpServerLocation(
      fileName: map['fileName'] == null ? null : (map['fileName']!).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

