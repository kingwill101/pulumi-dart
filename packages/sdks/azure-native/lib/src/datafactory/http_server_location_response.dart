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
  const HttpServerLocationResponse({
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
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      relativeUrl: (() { final guardedValue = map['relativeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

