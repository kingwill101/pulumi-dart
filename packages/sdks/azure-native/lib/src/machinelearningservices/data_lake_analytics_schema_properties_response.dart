// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeAnalyticsSchemaPropertiesResponse {
  /// DataLake Store Account Name
  final pulumi.Input<String?>? dataLakeStoreAccountName;

  /// Creates a new [DataLakeAnalyticsSchemaPropertiesResponse].
  /// [dataLakeStoreAccountName] DataLake Store Account Name
  const DataLakeAnalyticsSchemaPropertiesResponse({
    this.dataLakeStoreAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakeStoreAccountName': ?dataLakeStoreAccountName,
    };
  }

  factory DataLakeAnalyticsSchemaPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalyticsSchemaPropertiesResponse(
      dataLakeStoreAccountName: (() { final guardedValue = map['dataLakeStoreAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
