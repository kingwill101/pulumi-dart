// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDocument.
class GetDocumentArgs {
  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  final Input<String>? documentFormat;

  /// The document version.
  final Input<String>? documentVersion;

  /// The name of the document.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetDocumentArgs({
    this.documentFormat,
    this.documentVersion,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final documentFormatValue = documentFormat;
    if (documentFormatValue != null) {
      map['documentFormat'] = documentFormatValue;
    }
    final documentVersionValue = documentVersion;
    if (documentVersionValue != null) {
      map['documentVersion'] = documentVersionValue;
    }
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs(
      documentFormat: Input.asOptionalInput<String>(map['documentFormat']),
      documentVersion: Input.asOptionalInput<String>(map['documentVersion']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
