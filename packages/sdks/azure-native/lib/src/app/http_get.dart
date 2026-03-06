// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing a http get request.
class HttpGet {
  /// Name of the file that the request should be saved to.
  final pulumi.Input<String>? fileName;
  /// List of headers to send with the request.
  final pulumi.Input<List<String>>? headers;
  /// URL to make HTTP GET request against.
  final pulumi.Input<String> url;

  /// Creates a new [HttpGet].
  /// [fileName] Name of the file that the request should be saved to.
  /// [headers] List of headers to send with the request.
  /// [url] URL to make HTTP GET request against.
  const HttpGet({
    this.fileName,
    this.headers,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'headers': ?headers,
      'url': url,
    };
  }

  factory HttpGet.fromMap(Map<String, dynamic> map) {
    return HttpGet(
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

