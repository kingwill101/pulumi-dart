// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExport.
class GetExportResult {
  final String? apiId;
  /// ID of the API.
  final String? body;
  final String? exportVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includeExtensions;
  final String? outputType;
  final String? region;
  final String? specification;
  final String? stageName;

  /// Creates a new [GetExportResult].
  /// [apiId] Optional.
  /// [body] ID of the API.
  /// [exportVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeExtensions] Optional.
  /// [outputType] Optional.
  /// [region] Optional.
  /// [specification] Optional.
  /// [stageName] Optional.
  const GetExportResult({
    this.apiId,
    this.body,
    this.exportVersion,
    this.id,
    this.includeExtensions,
    this.outputType,
    this.region,
    this.specification,
    this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'body': ?body,
      'exportVersion': ?exportVersion,
      'id': ?id,
      'includeExtensions': ?includeExtensions,
      'outputType': ?outputType,
      'region': ?region,
      'specification': ?specification,
      'stageName': ?stageName,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportVersion: (() { final guardedValue = map['exportVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeExtensions: (() { final guardedValue = map['includeExtensions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
