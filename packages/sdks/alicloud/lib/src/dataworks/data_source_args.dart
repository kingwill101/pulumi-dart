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
  DataSourceArgs({
    required pulumi.Output<String> connectionProperties,
    required pulumi.Output<String> connectionPropertiesMode,
    required pulumi.Output<String> dataSourceName,
    pulumi.Output<String>? description,
    required pulumi.Output<int> projectId,
    required pulumi.Output<String> type,
  }) :
      connectionProperties = pulumi.Input.asInput<String>(connectionProperties),
      connectionPropertiesMode = pulumi.Input.asInput<String>(connectionPropertiesMode),
      dataSourceName = pulumi.Input.asInput<String>(dataSourceName),
      description = pulumi.Input.asOptionalInput<String>(description),
      projectId = pulumi.Input.asInput<int>(projectId),
      type = pulumi.Input.asInput<String>(type);

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
      connectionProperties: pulumi.Output.create<String>(map['connectionProperties'] as String),
      connectionPropertiesMode: pulumi.Output.create<String>(map['connectionPropertiesMode'] as String),
      dataSourceName: pulumi.Output.create<String>(map['dataSourceName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      projectId: pulumi.Output.create<int>(map['projectId'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

