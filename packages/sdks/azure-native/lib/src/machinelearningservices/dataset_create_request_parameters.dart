// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_create_request_path.dart';
import 'dataset_create_request_query.dart';

class DatasetCreateRequestParameters {
  /// Header type.
  final pulumi.Input<String>? header;
  /// Boolean to keep path information as column in the dataset. Defaults to False. This is useful when reading multiple files, and want to know which file a particular record originated from, or to keep useful information in file path.
  final pulumi.Input<bool>? includePath;
  /// The partition information of each path will be extracted into columns based on the specified format. Format part '{column_name}' creates string column, and '{column_name:yyyy/MM/dd/HH/mm/ss}' creates datetime column, where 'yyyy', 'MM', 'dd', 'HH', 'mm' and 'ss' are used to extract year, month, day, hour, minute and second for the datetime type. The format should start from the position of first partition key until the end of file path. For example, given the path '../USA/2019/01/01/data.parquet' where the partition is by country/region and time, partition_format='/{CountryOrRegion}/{PartitionDate:yyyy/MM/dd}/data.csv' creates a string column 'CountryOrRegion' with the value 'USA' and a datetime column 'PartitionDate' with the value '2019-01-01
  final pulumi.Input<String>? partitionFormat;
  final pulumi.Input<DatasetCreateRequestPath>? path;
  final pulumi.Input<DatasetCreateRequestQuery>? query;
  /// The separator used to split columns for 'delimited_files' sourceType.
  final pulumi.Input<String>? separator;
  /// Data source type.
  final pulumi.Input<String>? sourceType;

  /// Creates a new [DatasetCreateRequestParameters].
  /// [header] Header type.
  /// [includePath] Boolean to keep path information as column in the dataset. Defaults to False. This is useful when reading multiple files, and want to know which file a particular record originated from, or to keep useful information in file path.
  /// [partitionFormat] The partition information of each path will be extracted into columns based on the specified format. Format part '{column_name}' creates string column, and '{column_name:yyyy/MM/dd/HH/mm/ss}' creates datetime column, where 'yyyy', 'MM', 'dd', 'HH', 'mm' and 'ss' are used to extract year, month, day, hour, minute and second for the datetime type. The format should start from the position of first partition key until the end of file path. For example, given the path '../USA/2019/01/01/data.parquet' where the partition is by country/region and time, partition_format='/{CountryOrRegion}/{PartitionDate:yyyy/MM/dd}/data.csv' creates a string column 'CountryOrRegion' with the value 'USA' and a datetime column 'PartitionDate' with the value '2019-01-01
  /// [path] Optional.
  /// [query] Optional.
  /// [separator] The separator used to split columns for 'delimited_files' sourceType.
  /// [sourceType] Data source type.
  DatasetCreateRequestParameters({
    this.header,
    this.includePath,
    this.partitionFormat,
    this.path,
    this.query,
    this.separator,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?header,
      'includePath': ?includePath,
      'partitionFormat': ?partitionFormat,
      'path': ?pulumi.Input.mapOptionalInputValue<DatasetCreateRequestPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'query': ?pulumi.Input.mapOptionalInputValue<DatasetCreateRequestQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
      'separator': ?separator,
      'sourceType': ?sourceType,
    };
  }

  factory DatasetCreateRequestParameters.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestParameters(
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includePath: (() { final guardedValue = map['includePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      partitionFormat: (() { final guardedValue = map['partitionFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetCreateRequestPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetCreateRequestQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      separator: (() { final guardedValue = map['separator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

