// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationDataSource {
  /// ARN of the OpenSearch domain or collection. Must be between 20 and 2048 characters.
  final pulumi.Input<String?>? dataSourceArn;
  /// A detailed description of the data source. Must be at most 1000 characters and contain only alphanumeric characters, underscores, spaces, and the following special characters: `@#%*+=:?./!-`.
  final pulumi.Input<String?>? dataSourceDescription;

  /// Creates a new [ApplicationDataSource].
  /// [dataSourceArn] ARN of the OpenSearch domain or collection. Must be between 20 and 2048 characters.
  /// [dataSourceDescription] A detailed description of the data source. Must be at most 1000 characters and contain only alphanumeric characters, underscores, spaces, and the following special characters: `@#%*+=:?./!-`.
  const ApplicationDataSource({
    this.dataSourceArn,
    this.dataSourceDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceArn': ?dataSourceArn,
      'dataSourceDescription': ?dataSourceDescription,
    };
  }

  factory ApplicationDataSource.fromMap(Map<String, dynamic> map) {
    return ApplicationDataSource(
      dataSourceArn: (() { final guardedValue = map['dataSourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceDescription: (() { final guardedValue = map['dataSourceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
