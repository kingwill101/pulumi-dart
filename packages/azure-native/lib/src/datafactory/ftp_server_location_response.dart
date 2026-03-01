// ignore_for_file: unused_element, unnecessary_cast


/// The location of ftp server dataset.
class FtpServerLocationResponse {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'FtpServerLocation'.
  final String type;

  /// Creates a new [FtpServerLocationResponse].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  FtpServerLocationResponse({
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

  factory FtpServerLocationResponse.fromMap(Map<String, dynamic> map) {
    return FtpServerLocationResponse(
      fileName: map['fileName'] == null ? null : map['fileName'],
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      type: map['type'] as String,
    );
  }
}

