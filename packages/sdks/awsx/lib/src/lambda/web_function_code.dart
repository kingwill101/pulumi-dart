// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebFunctionCode {
  /// Runnable application files, including dependencies. FileArchive accepts a directory or an
  /// existing archive.
  final pulumi.Input<dynamic> archive;

  /// Creates a new [WebFunctionCode].
  /// [archive] Runnable application files, including dependencies. FileArchive accepts a directory or an
  const WebFunctionCode({
    required this.archive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archive': archive,
    };
  }

  factory WebFunctionCode.fromMap(Map<String, dynamic> map) {
    return WebFunctionCode(
      archive: pulumi.Input.fromValue(map['archive']),
    );
  }
}
