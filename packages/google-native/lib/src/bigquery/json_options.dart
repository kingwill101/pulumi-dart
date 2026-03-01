// ignore_for_file: unused_element, unnecessary_cast

class JsonOptions {
  /// [Optional] The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  final String? encoding;

  /// Creates a new [JsonOptions].
  /// [encoding] [Optional] The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  JsonOptions({this.encoding});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'encoding': ?encoding};
  }

  factory JsonOptions.fromMap(Map<String, dynamic> map) {
    return JsonOptions(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
    );
  }
}
