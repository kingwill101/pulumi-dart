// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExport.
class GetExportResult2 {
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

  GetExportResult2({
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
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['body'] = body;
    final exportVersionValue = exportVersion;
    if (exportVersionValue != null) {
      map['exportVersion'] = exportVersionValue;
    }
    map['id'] = id;
    final includeExtensionsValue = includeExtensions;
    if (includeExtensionsValue != null) {
      map['includeExtensions'] = includeExtensionsValue;
    }
    map['outputType'] = outputType;
    map['region'] = region;
    map['specification'] = specification;
    final stageNameValue = stageName;
    if (stageNameValue != null) {
      map['stageName'] = stageNameValue;
    }
    return map;
  }

  factory GetExportResult2.fromMap(Map<String, dynamic> map) {
    return GetExportResult2(
      apiId: map['apiId'] as String,
      body: map['body'] as String,
      exportVersion:
          map['exportVersion'] == null ? null : map['exportVersion'] as String,
      id: map['id'] as String,
      includeExtensions: map['includeExtensions'] == null
          ? null
          : map['includeExtensions'] as bool,
      outputType: map['outputType'] as String,
      region: map['region'] as String,
      specification: map['specification'] as String,
      stageName: map['stageName'] == null ? null : map['stageName'] as String,
    );
  }
}
