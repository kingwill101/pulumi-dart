// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataworks_data_source_data_source_args_doc}
/// The set of arguments for DataSource.
/// {@endtemplate}
/// {@macro pulumi_dataworks_data_source_data_source_args_doc}
class DataSourceArgs {
  /// Data source connection configuration information, including the connection address, access identity, and environment information. The data source environment EnvType information is a member property of this object, including DEV (Development Environment) and PROD (production environment). The value of EnvType is not case-sensitive.
  final pulumi.Input<String> connectionProperties;
  /// The configuration mode of the data source. Different types of data sources have different configuration modes. For example, MySQL data sources support UrlMode and InstanceMode.
  final pulumi.Input<String> connectionPropertiesMode;
  /// The data source name. The name of a data source in a specific environment (development environment or production environment) is unique in a project.
  final pulumi.Input<String> dataSourceName;
  /// Description of the data source
  final pulumi.Input<String>? description;
  /// The ID of the project to which the data source belongs.
  final pulumi.Input<int> projectId;
  /// The type of data source. For a list of data source types, see the values listed in the API documentation.
  final pulumi.Input<String> type;

  /// Creates a new [DataSourceArgs].
  /// [connectionProperties] Data source connection configuration information, including the connection address, access identity, and environment information. The data source environment EnvType information is a member property of this object, including DEV (Development Environment) and PROD (production environment). The value of EnvType is not case-sensitive.
  /// [connectionPropertiesMode] The configuration mode of the data source. Different types of data sources have different configuration modes. For example, MySQL data sources support UrlMode and InstanceMode.
  /// [dataSourceName] The data source name. The name of a data source in a specific environment (development environment or production environment) is unique in a project.
  /// [description] Description of the data source
  /// [projectId] The ID of the project to which the data source belongs.
  /// [type] The type of data source. For a list of data source types, see the values listed in the API documentation.
  const DataSourceArgs({
    required this.connectionProperties,
    required this.connectionPropertiesMode,
    required this.dataSourceName,
    this.description,
    required this.projectId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionProperties': connectionProperties,
      'connectionPropertiesMode': connectionPropertiesMode,
      'dataSourceName': dataSourceName,
      'description': ?description,
      'projectId': projectId,
      'type': type,
    };
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      connectionProperties: pulumi.Input.fromValue(map['connectionProperties'] as String),
      connectionPropertiesMode: pulumi.Input.fromValue(map['connectionPropertiesMode'] as String),
      dataSourceName: pulumi.Input.fromValue(map['dataSourceName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: pulumi.Input.fromValue(map['projectId'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

