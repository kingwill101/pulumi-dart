// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of http server.
class HttpServerLocationResponse {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Specify the relativeUrl of http server. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? relativeUrl;
  /// Type of dataset storage location.
  /// Expected value is 'HttpServerLocation'.
  final pulumi.Input<String> type;

  /// Creates a new [HttpServerLocationResponse].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [relativeUrl] Specify the relativeUrl of http server. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  HttpServerLocationResponse({
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

  factory HttpServerLocationResponse.fromMap(Map<String, dynamic> map) {
    return HttpServerLocationResponse(
      fileName: map['fileName'] == null ? null : (map['fileName']).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']).input(),
      relativeUrl: map['relativeUrl'] == null ? null : (map['relativeUrl']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

