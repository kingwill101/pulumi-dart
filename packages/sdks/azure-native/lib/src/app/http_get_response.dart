// ignore_for_file: unused_element, unnecessary_cast


/// Model representing a http get request.
class HttpGetResponse {
  /// Name of the file that the request should be saved to.
  final String? fileName;
  /// List of headers to send with the request.
  final List<String>? headers;
  /// URL to make HTTP GET request against.
  final String url;

  /// Creates a new [HttpGetResponse].
  /// [fileName] Name of the file that the request should be saved to.
  /// [headers] List of headers to send with the request.
  /// [url] URL to make HTTP GET request against.
  HttpGetResponse({
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

  factory HttpGetResponse.fromMap(Map<String, dynamic> map) {
    return HttpGetResponse(
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as List).cast<String>(),
      url: map['url'] as String,
    );
  }
}

