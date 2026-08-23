// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogS3TableIntegrationSourceDataSource {
  /// Name of the data source. Use `"*"` to match all sources.
  final pulumi.Input<String> name;
  /// Type of the data source. Use `"*"` to match all types.
  final pulumi.Input<String> type;

  /// Creates a new [LogS3TableIntegrationSourceDataSource].
  /// [name] Name of the data source. Use `"*"` to match all sources.
  /// [type] Type of the data source. Use `"*"` to match all types.
  const LogS3TableIntegrationSourceDataSource({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory LogS3TableIntegrationSourceDataSource.fromMap(Map<String, dynamic> map) {
    return LogS3TableIntegrationSourceDataSource(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
