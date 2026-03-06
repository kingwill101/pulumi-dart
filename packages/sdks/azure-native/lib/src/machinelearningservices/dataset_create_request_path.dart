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
  const DatasetCreateRequestPath({
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
      dataPath: (() { final guardedValue = map['dataPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetCreateRequestDataPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpUrl: (() { final guardedValue = map['httpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

