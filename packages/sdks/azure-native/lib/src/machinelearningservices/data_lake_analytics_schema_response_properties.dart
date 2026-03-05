// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeAnalyticsSchemaResponseProperties {
  /// DataLake Store Account Name
  final pulumi.Input<String>? dataLakeStoreAccountName;

  /// Creates a new [DataLakeAnalyticsSchemaResponseProperties].
  /// [dataLakeStoreAccountName] DataLake Store Account Name
  DataLakeAnalyticsSchemaResponseProperties({
    this.dataLakeStoreAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeStoreAccountName': ?dataLakeStoreAccountName,
    };
  }

  factory DataLakeAnalyticsSchemaResponseProperties.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalyticsSchemaResponseProperties(
      dataLakeStoreAccountName: (() { final guardedValue = map['dataLakeStoreAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

