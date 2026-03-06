// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExport.
class GetExportResult {
  /// ARN of stack that contains the exported output name and value.
  final String exportingStackId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Value from Cloudformation export identified by the export name found from [list-exports](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/list-exports.html)
  final String value;

  /// Creates a new [GetExportResult].
  /// [exportingStackId] ARN of stack that contains the exported output name and value.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [value] Value from Cloudformation export identified by the export name found from [list-exports](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/list-exports.html)
  const GetExportResult({
    required this.exportingStackId,
    required this.id,
    required this.name,
    required this.region,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportingStackId': exportingStackId,
      'id': id,
      'name': name,
      'region': region,
      'value': value,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      exportingStackId: map['exportingStackId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      value: map['value'] as String,
    );
  }
}

