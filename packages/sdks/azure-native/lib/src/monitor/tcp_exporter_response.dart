// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base exporter using TCP as transport protocol.
class TcpExporterResponse {
  /// TCP url to export.
  final pulumi.Input<String> url;

  /// Creates a new [TcpExporterResponse].
  /// [url] TCP url to export.
  TcpExporterResponse({required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': url};
  }

  factory TcpExporterResponse.fromMap(Map<String, dynamic> map) {
    return TcpExporterResponse(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
