// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fixed input data definition.
class FixedInputData {
  /// Mapping of column names to special uses.
  final pulumi.Input<Map<String, String>>? columns;
  /// The context metadata of the data source.
  final pulumi.Input<String>? dataContext;
  /// Monitoring input data type enum.
  /// Expected value is 'Fixed'.
  final pulumi.Input<String> inputDataType;
  /// [Required] Specifies the type of job.
  final pulumi.Input<String> jobInputType;
  /// [Required] Input Asset URI.
  final pulumi.Input<String> uri;

  /// Creates a new [FixedInputData].
  /// [columns] Mapping of column names to special uses.
  /// [dataContext] The context metadata of the data source.
  /// [inputDataType] Monitoring input data type enum.
  /// [jobInputType] [Required] Specifies the type of job.
  /// [uri] [Required] Input Asset URI.
  FixedInputData({
    this.columns,
    this.dataContext,
    required this.inputDataType,
    required this.jobInputType,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'dataContext': ?dataContext,
      'inputDataType': inputDataType,
      'jobInputType': jobInputType,
      'uri': uri,
    };
  }

  factory FixedInputData.fromMap(Map<String, dynamic> map) {
    return FixedInputData(
      columns: map['columns'] == null ? null : ((map['columns'] as Map).cast<String, String>()).input(),
      dataContext: map['dataContext'] == null ? null : (map['dataContext'] as String).input(),
      inputDataType: (map['inputDataType'] as String).input(),
      jobInputType: (map['jobInputType'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

