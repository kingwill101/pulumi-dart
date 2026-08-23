// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentFilter {
  /// The key of a key-value pair that identifies the location of an attachment to the document. Valid values: `SourceUrl`, `S3FileUrl`, `AttachmentReference`.
  final pulumi.Input<String> key;
  /// The value of a key-value pair that identifies the location of an attachment to the document. The argument format is a list of a single string that depends on the type of key you specify - see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_AttachmentsSource.html) for details.
  final pulumi.Input<List<String>> values;

  /// Creates a new [DocumentFilter].
  /// [key] The key of a key-value pair that identifies the location of an attachment to the document. Valid values: `SourceUrl`, `S3FileUrl`, `AttachmentReference`.
  /// [values] The value of a key-value pair that identifies the location of an attachment to the document. The argument format is a list of a single string that depends on the type of key you specify - see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_AttachmentsSource.html) for details.
  const DocumentFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory DocumentFilter.fromMap(Map<String, dynamic> map) {
    return DocumentFilter(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
