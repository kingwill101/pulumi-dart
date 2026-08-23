// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExport.
class GetExportResult {
  final String apiId;
  /// ID of the API.
  final String body;
  final String? exportVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeExtensions;
  final String outputType;
  final String region;
  final String specification;
  final String? stageName;

  /// Creates a new [GetExportResult].
  /// [apiId] Required.
  /// [body] ID of the API.
  /// [exportVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeExtensions] Optional.
  /// [outputType] Required.
  /// [region] Required.
  /// [specification] Required.
  /// [stageName] Optional.
  const GetExportResult({
    required this.apiId,
    required this.body,
    this.exportVersion,
    required this.id,
    this.includeExtensions,
    required this.outputType,
    required this.region,
    required this.specification,
    this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'body': body,
      'exportVersion': ?exportVersion,
      'id': id,
      'includeExtensions': ?includeExtensions,
      'outputType': outputType,
      'region': region,
      'specification': specification,
      'stageName': ?stageName,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      apiId: map['apiId'] as String,
      body: map['body'] as String,
      exportVersion: (() { final guardedValue = map['exportVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      includeExtensions: (() { final guardedValue = map['includeExtensions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outputType: map['outputType'] as String,
      region: map['region'] as String,
      specification: map['specification'] as String,
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
