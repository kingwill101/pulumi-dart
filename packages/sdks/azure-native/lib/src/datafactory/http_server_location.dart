// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of http server.
class HttpServerLocation {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Specify the relativeUrl of http server. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? relativeUrl;
  /// Type of dataset storage location.
  /// Expected value is 'HttpServerLocation'.
  final pulumi.Input<String> type;

  /// Creates a new [HttpServerLocation].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [relativeUrl] Specify the relativeUrl of http server. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  HttpServerLocation({
    this.fileName,
    this.folderPath,
    this.relativeUrl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'folderPath': ?folderPath,
      'relativeUrl': ?relativeUrl,
      'type': type,
    };
  }

  factory HttpServerLocation.fromMap(Map<String, dynamic> map) {
    return HttpServerLocation(
      fileName: map['fileName'] == null ? null : (map['fileName']).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']).input(),
      relativeUrl: map['relativeUrl'] == null ? null : (map['relativeUrl']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

