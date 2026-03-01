// ignore_for_file: unused_element, unnecessary_cast


/// The location of HDFS.
class HdfsLocation {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'HdfsLocation'.
  final String type;

  /// Creates a new [HdfsLocation].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  HdfsLocation({
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

  factory HdfsLocation.fromMap(Map<String, dynamic> map) {
    return HdfsLocation(
      fileName: map['fileName'] == null ? null : map['fileName'],
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      type: map['type'] as String,
    );
  }
}

