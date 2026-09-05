// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExport.
class GetExportResult {
  /// ARN of stack that contains the exported output name and value.
  final String? exportingStackId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Value from Cloudformation export identified by the export name found from [list-exports](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/list-exports.html)
  final String? value;

  /// Creates a new [GetExportResult].
  /// [exportingStackId] ARN of stack that contains the exported output name and value.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [value] Value from Cloudformation export identified by the export name found from [list-exports](http://docs.aws.amazon.com/cli/latest/reference/cloudformation/list-exports.html)
  const GetExportResult({
    this.exportingStackId,
    this.id,
    this.name,
    this.region,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportingStackId': ?exportingStackId,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'value': ?value,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      exportingStackId: (() { final guardedValue = map['exportingStackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
