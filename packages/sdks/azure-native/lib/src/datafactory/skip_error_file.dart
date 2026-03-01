// ignore_for_file: unused_element, unnecessary_cast


/// Skip error file.
class SkipErrorFile {
  /// Skip if source/sink file changed by other concurrent write. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic dataInconsistency;
  /// Skip if file is deleted by other client during copy. Default is true. Type: boolean (or Expression with resultType boolean).
  final dynamic fileMissing;

  /// Creates a new [SkipErrorFile].
  /// [dataInconsistency] Skip if source/sink file changed by other concurrent write. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [fileMissing] Skip if file is deleted by other client during copy. Default is true. Type: boolean (or Expression with resultType boolean).
  SkipErrorFile({
    this.dataInconsistency,
    this.fileMissing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataInconsistency': ?dataInconsistency,
      'fileMissing': ?fileMissing,
    };
  }

  factory SkipErrorFile.fromMap(Map<String, dynamic> map) {
    return SkipErrorFile(
      dataInconsistency: map['dataInconsistency'] == null ? null : map['dataInconsistency'],
      fileMissing: map['fileMissing'] == null ? null : map['fileMissing'],
    );
  }
}

