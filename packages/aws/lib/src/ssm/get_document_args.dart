// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_get_document_get_document_args_doc}
/// Arguments for getDocument.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_document_get_document_args_doc}
class GetDocumentArgs {
  /// The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  final pulumi.Input<String>? documentFormat;

  /// The document version.
  final pulumi.Input<String>? documentVersion;

  /// The name of the document.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDocumentArgs].
  /// [documentFormat] The format of the document. Valid values: `JSON`, `TEXT`, `YAML`.
  /// [documentVersion] The document version.
  /// [name] The name of the document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDocumentArgs({
    String? documentFormat,
    String? documentVersion,
    required String name,
    String? region,
  }) : documentFormat = pulumi.Input.asOptionalInput<String>(documentFormat),
       documentVersion = pulumi.Input.asOptionalInput<String>(documentVersion),
       name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentFormat': ?documentFormat,
      'documentVersion': ?documentVersion,
      'name': name,
      'region': ?region,
    };
  }

  factory GetDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs(
      documentFormat: map['documentFormat'] == null
          ? null
          : map['documentFormat'] as String,
      documentVersion: map['documentVersion'] == null
          ? null
          : map['documentVersion'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
