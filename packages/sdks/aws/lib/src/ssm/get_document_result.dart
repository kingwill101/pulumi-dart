// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDocument.
class GetDocumentResult {
  /// ARN of the document. If the document is an AWS managed document, this value will be set to the name of the document instead.
  final String? arn;
  /// The content for the SSM document in JSON or YAML format.
  final String? content;
  final String? documentFormat;
  /// The type of the document.
  final String? documentType;
  final String? documentVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetDocumentResult].
  /// [arn] ARN of the document. If the document is an AWS managed document, this value will be set to the name of the document instead.
  /// [content] The content for the SSM document in JSON or YAML format.
  /// [documentFormat] Optional.
  /// [documentType] The type of the document.
  /// [documentVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetDocumentResult({
    this.arn,
    this.content,
    this.documentFormat,
    this.documentType,
    this.documentVersion,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'content': ?content,
      'documentFormat': ?documentFormat,
      'documentType': ?documentType,
      'documentVersion': ?documentVersion,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentFormat: (() { final guardedValue = map['documentFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentType: (() { final guardedValue = map['documentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentVersion: (() { final guardedValue = map['documentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
