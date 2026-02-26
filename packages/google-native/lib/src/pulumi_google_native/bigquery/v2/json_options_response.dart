// ignore_for_file: unused_element, unnecessary_cast

class JsonOptionsResponse {
  /// [Optional] The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  final String encoding;

  JsonOptionsResponse({
    required this.encoding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encoding'] = encoding;
    return map;
  }

  factory JsonOptionsResponse.fromMap(Map<String, dynamic> map) {
    return JsonOptionsResponse(
      encoding: map['encoding'] as String,
    );
  }
}
