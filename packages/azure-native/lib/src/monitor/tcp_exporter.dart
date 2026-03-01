// ignore_for_file: unused_element, unnecessary_cast


/// Base exporter using TCP as transport protocol.
class TcpExporter {
  /// TCP url to export.
  final String url;

  /// Creates a new [TcpExporter].
  /// [url] TCP url to export.
  TcpExporter({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory TcpExporter.fromMap(Map<String, dynamic> map) {
    return TcpExporter(
      url: map['url'] as String,
    );
  }
}

