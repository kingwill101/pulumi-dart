// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiJobDestinationDataSourceSetting {
  /// Destination data source name
  final pulumi.Input<String>? dataSourceName;

  /// Creates a new [DiJobDestinationDataSourceSetting].
  /// [dataSourceName] Destination data source name
  const DiJobDestinationDataSourceSetting({
    this.dataSourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
    };
  }

  factory DiJobDestinationDataSourceSetting.fromMap(Map<String, dynamic> map) {
    return DiJobDestinationDataSourceSetting(
      dataSourceName: (() { final guardedValue = map['dataSourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

