// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExport.
class GetExportCloudformationResult {
  /// ARN of stack that contains the exported output name and value.
  final String exportingStackId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Value from Cloudformation export identified by the export name found from [list-exports](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/list-exports.html)
  final String value;

  GetExportCloudformationResult({
    required this.exportingStackId,
    required this.id,
    required this.name,
    required this.region,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exportingStackId'] = exportingStackId;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['value'] = value;
    return map;
  }

  factory GetExportCloudformationResult.fromMap(Map<String, dynamic> map) {
    return GetExportCloudformationResult(
      exportingStackId: map['exportingStackId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      value: map['value'] as String,
    );
  }
}
