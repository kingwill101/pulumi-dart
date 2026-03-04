// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentAttachmentsSource {
  /// The key of a key-value pair that identifies the location of an attachment to the document. Valid values: `SourceUrl`, `S3FileUrl`, `AttachmentReference`.
  final pulumi.Input<String> key;

  /// The name of the document attachment file.
  final pulumi.Input<String>? name;

  /// The value of a key-value pair that identifies the location of an attachment to the document. The argument format is a list of a single string that depends on the type of key you specify - see the [API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_AttachmentsSource.html) for details.
  final pulumi.Input<List<String>> values;

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
    return <String, dynamic>{'key': key, 'name': ?name, 'values': values};
  }

  factory DocumentAttachmentsSource.fromMap(Map<String, dynamic> map) {
    return DocumentAttachmentsSource(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
