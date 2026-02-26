// ignore_for_file: unused_element, unnecessary_cast

class TableExternalDataConfigurationJsonOptions {
  /// The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  final String? encoding;

  TableExternalDataConfigurationJsonOptions({
    this.encoding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    return map;
  }

  factory TableExternalDataConfigurationJsonOptions.fromMap(
      Map<String, dynamic> map) {
    return TableExternalDataConfigurationJsonOptions(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
    );
  }
}
