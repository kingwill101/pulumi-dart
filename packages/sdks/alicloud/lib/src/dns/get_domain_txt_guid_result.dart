// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainTxtGuid.
class GetDomainTxtGuidResult {
  final String domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? lang;
  final String? outputFile;
  /// Host record.
  final String rr;
  final String type;
  /// Record the value.
  final String value;

  /// Creates a new [GetDomainTxtGuidResult].
  /// [domainName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lang] Optional.
  /// [outputFile] Optional.
  /// [rr] Host record.
  /// [type] Required.
  /// [value] Record the value.
  const GetDomainTxtGuidResult({
    required this.domainName,
    required this.id,
    this.lang,
    this.outputFile,
    required this.rr,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'id': id,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'rr': rr,
      'type': type,
      'value': value,
    };
  }

  factory GetDomainTxtGuidResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTxtGuidResult(
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rr: map['rr'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

