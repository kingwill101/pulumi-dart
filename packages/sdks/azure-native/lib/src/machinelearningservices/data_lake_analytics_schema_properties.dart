// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeAnalyticsSchemaProperties {
  /// DataLake Store Account Name
  final pulumi.Input<String>? dataLakeStoreAccountName;

  /// Creates a new [DataLakeAnalyticsSchemaProperties].
  /// [dataLakeStoreAccountName] DataLake Store Account Name
  DataLakeAnalyticsSchemaProperties({
    this.dataLakeStoreAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeStoreAccountName': ?dataLakeStoreAccountName,
    };
  }

  factory DataLakeAnalyticsSchemaProperties.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalyticsSchemaProperties(
      dataLakeStoreAccountName: (() { final guardedValue = map['dataLakeStoreAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

