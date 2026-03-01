// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_serialization.dart';
import 'azure_data_lake_store_output_data_source.dart';

/// {@template pulumi_streamanalytics_output_args_doc}
/// The set of arguments for Output.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_args_doc}
class OutputArgs {
  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AzureDataLakeStoreOutputDataSource>? datasource;
  /// The name of the streaming job.
  final pulumi.Input<String> jobName;
  /// Resource name
  final pulumi.Input<String>? name;
  /// The name of the output.
  final pulumi.Input<String>? outputName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<AvroSerialization>? serialization;
  /// The size window to constrain a Stream Analytics output to.
  final pulumi.Input<int>? sizeWindow;
  /// The time frame for filtering Stream Analytics job outputs.
  final pulumi.Input<String>? timeWindow;

  /// Creates a new [OutputArgs].
  /// [datasource] Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [jobName] The name of the streaming job.
  /// [name] Resource name
  /// [outputName] The name of the output.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [sizeWindow] The size window to constrain a Stream Analytics output to.
  /// [timeWindow] The time frame for filtering Stream Analytics job outputs.
  OutputArgs({
    AzureDataLakeStoreOutputDataSource? datasource,
    required String jobName,
    String? name,
    String? outputName,
    required String resourceGroupName,
    AvroSerialization? serialization,
    int? sizeWindow,
    String? timeWindow,
  }) :
      datasource = pulumi.Input.asOptionalInput<AzureDataLakeStoreOutputDataSource>(datasource),
      jobName = pulumi.Input.asInput<String>(jobName),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputName = pulumi.Input.asOptionalInput<String>(outputName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialization = pulumi.Input.asOptionalInput<AvroSerialization>(serialization),
      sizeWindow = pulumi.Input.asOptionalInput<int>(sizeWindow),
      timeWindow = pulumi.Input.asOptionalInput<String>(timeWindow);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasource': ?pulumi.Input.mapOptionalInputValue<AzureDataLakeStoreOutputDataSource, Map<String, dynamic>>(datasource, (value) => value.toMap()),
      'jobName': jobName,
      'name': ?name,
      'outputName': ?outputName,
      'resourceGroupName': resourceGroupName,
      'serialization': ?pulumi.Input.mapOptionalInputValue<AvroSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'sizeWindow': ?sizeWindow,
      'timeWindow': ?timeWindow,
    };
  }

  factory OutputArgs.fromMap(Map<String, dynamic> map) {
    return OutputArgs(
      datasource: map['datasource'] == null ? null : AzureDataLakeStoreOutputDataSource.fromMap((map['datasource'] as Map).cast<String, dynamic>()),
      jobName: map['jobName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      outputName: map['outputName'] == null ? null : map['outputName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serialization: map['serialization'] == null ? null : AvroSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>()),
      sizeWindow: map['sizeWindow'] == null ? null : map['sizeWindow'] as int,
      timeWindow: map['timeWindow'] == null ? null : map['timeWindow'] as String,
    );
  }
}

