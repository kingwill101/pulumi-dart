// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_create_request_data_path.dart';

class DatasetCreateRequestPath {
  final pulumi.Input<DatasetCreateRequestDataPath>? dataPath;
  /// The Http URL.
  final pulumi.Input<String>? httpUrl;

  /// Creates a new [DatasetCreateRequestPath].
  /// [dataPath] Optional.
  /// [httpUrl] The Http URL.
  DatasetCreateRequestPath({
    this.dataPath,
    this.httpUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPath': ?pulumi.Input.mapOptionalInputValue<DatasetCreateRequestDataPath, Map<String, dynamic>>(dataPath, (value) => value.toMap()),
      'httpUrl': ?httpUrl,
    };
  }

  factory DatasetCreateRequestPath.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestPath(
      dataPath: map['dataPath'] == null ? null : (DatasetCreateRequestDataPath.fromMap((map['dataPath'] as Map).cast<String, dynamic>())).input(),
      httpUrl: map['httpUrl'] == null ? null : (map['httpUrl'] as String).input(),
    );
  }
}

