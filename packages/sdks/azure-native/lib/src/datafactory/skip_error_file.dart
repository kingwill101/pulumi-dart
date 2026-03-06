// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Skip error file.
class SkipErrorFile {
  /// Skip if source/sink file changed by other concurrent write. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? dataInconsistency;
  /// Skip if file is deleted by other client during copy. Default is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? fileMissing;

  /// Creates a new [SkipErrorFile].
  /// [dataInconsistency] Skip if source/sink file changed by other concurrent write. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [fileMissing] Skip if file is deleted by other client during copy. Default is true. Type: boolean (or Expression with resultType boolean).
  const SkipErrorFile({
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
      dataInconsistency: (() { final guardedValue = map['dataInconsistency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      fileMissing: (() { final guardedValue = map['fileMissing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

