// ignore_for_file: unused_element, unnecessary_cast

import 'avro_serialization.dart';
import 'azure_data_lake_store_output_data_source.dart';

/// An output object, containing all information associated with the named output. All outputs are contained under a streaming job.
class OutputType {
  /// Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  final AzureDataLakeStoreOutputDataSource? datasource;
  /// Resource name
  final String? name;
  /// Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  final AvroSerialization? serialization;
  /// The size window to constrain a Stream Analytics output to.
  final int? sizeWindow;
  /// The time frame for filtering Stream Analytics job outputs.
  final String? timeWindow;

  /// Creates a new [OutputType].
  /// [datasource] Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [name] Resource name
  /// [serialization] Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests.
  /// [sizeWindow] The size window to constrain a Stream Analytics output to.
  /// [timeWindow] The time frame for filtering Stream Analytics job outputs.
  OutputType({
    this.datasource,
    this.name,
    this.serialization,
    this.sizeWindow,
    this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasource': ?datasource == null ? null : datasource!.toMap(),
      'name': ?name,
      'serialization': ?serialization == null ? null : serialization!.toMap(),
      'sizeWindow': ?sizeWindow,
      'timeWindow': ?timeWindow,
    };
  }

  factory OutputType.fromMap(Map<String, dynamic> map) {
    return OutputType(
      datasource: map['datasource'] == null ? null : AzureDataLakeStoreOutputDataSource.fromMap((map['datasource'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      serialization: map['serialization'] == null ? null : AvroSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>()),
      sizeWindow: map['sizeWindow'] == null ? null : map['sizeWindow'] as int,
      timeWindow: map['timeWindow'] == null ? null : map['timeWindow'] as String,
    );
  }
}

