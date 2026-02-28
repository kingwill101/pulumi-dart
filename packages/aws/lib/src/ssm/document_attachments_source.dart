// ignore_for_file: unused_element, unnecessary_cast

class DocumentAttachmentsSource {
  /// The key of a key-value pair that identifies the location of an attachment to the document. Valid values: `SourceUrl`, `S3FileUrl`, `AttachmentReference`.
  final String key;

  /// The name of the document attachment file.
  final String? name;

  /// The value of a key-value pair that identifies the location of an attachment to the document. The argument format is a list of a single string that depends on the type of key you specify - see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_AttachmentsSource.html) for details.
  final List<String> values;

  /// Creates a new [DocumentAttachmentsSource].
  /// [key] The key of a key-value pair that identifies the location of an attachment to the document. Valid values: `SourceUrl`, `S3FileUrl`, `AttachmentReference`.
  /// [name] The name of the document attachment file.
  /// [values] The value of a key-value pair that identifies the location of an attachment to the document. The argument format is a list of a single string that depends on the type of key you specify - see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_AttachmentsSource.html) for details.
  DocumentAttachmentsSource({
    required this.key,
    this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['values'] = values;
    return map;
  }

  factory DocumentAttachmentsSource.fromMap(Map<String, dynamic> map) {
    return DocumentAttachmentsSource(
      key: map['key'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
