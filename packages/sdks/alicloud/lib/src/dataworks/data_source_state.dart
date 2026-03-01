// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataSource resources.
class DataSourceState {
  /// Data source connection configuration information, including the connection address, access identity, and environment information. The data source environment EnvType information is a member property of this object, including DEV (Development Environment) and PROD (production environment). The value of EnvType is not case-sensitive.
  final pulumi.Input<String>? connectionProperties;
  /// The configuration mode of the data source. Different types of data sources have different configuration modes. For example, MySQL data sources support UrlMode and InstanceMode.
  final pulumi.Input<String>? connectionPropertiesMode;
  /// The creation time of the resource
  final pulumi.Input<int>? createTime;
  /// Creator of the data source
  final pulumi.Input<String>? createUser;
  /// The first ID of the resource
  final pulumi.Input<int>? dataSourceId;
  /// The data source name. The name of a data source in a specific environment (development environment or production environment) is unique in a project.
  final pulumi.Input<String>? dataSourceName;
  /// Description of the data source
  final pulumi.Input<String>? description;
  /// Modification time
  final pulumi.Input<int>? modifyTime;
  /// Modifier of the data source
  final pulumi.Input<String>? modifyUser;
  /// The ID of the project to which the data source belongs.
  final pulumi.Input<int>? projectId;
  /// Business Unique Key of Data Source
  final pulumi.Input<String>? qualifiedName;
  /// The type of data source. For a list of data source types, see the values listed in the API documentation.
  final pulumi.Input<String>? type;

  /// Creates a new [DataSourceState].
  /// [connectionProperties] Data source connection configuration information, including the connection address, access identity, and environment information. The data source environment EnvType information is a member property of this object, including DEV (Development Environment) and PROD (production environment). The value of EnvType is not case-sensitive.
  /// [connectionPropertiesMode] The configuration mode of the data source. Different types of data sources have different configuration modes. For example, MySQL data sources support UrlMode and InstanceMode.
  /// [createTime] The creation time of the resource
  /// [createUser] Creator of the data source
  /// [dataSourceId] The first ID of the resource
  /// [dataSourceName] The data source name. The name of a data source in a specific environment (development environment or production environment) is unique in a project.
  /// [description] Description of the data source
  /// [modifyTime] Modification time
  /// [modifyUser] Modifier of the data source
  /// [projectId] The ID of the project to which the data source belongs.
  /// [qualifiedName] Business Unique Key of Data Source
  /// [type] The type of data source. For a list of data source types, see the values listed in the API documentation.
  DataSourceState({
    pulumi.Output<String>? connectionProperties,
    pulumi.Output<String>? connectionPropertiesMode,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? createUser,
    pulumi.Output<int>? dataSourceId,
    pulumi.Output<String>? dataSourceName,
    pulumi.Output<String>? description,
    pulumi.Output<int>? modifyTime,
    pulumi.Output<String>? modifyUser,
    pulumi.Output<int>? projectId,
    pulumi.Output<String>? qualifiedName,
    pulumi.Output<String>? type,
  }) :
      connectionProperties = pulumi.Input.asOptionalInput<String>(connectionProperties),
      connectionPropertiesMode = pulumi.Input.asOptionalInput<String>(connectionPropertiesMode),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      createUser = pulumi.Input.asOptionalInput<String>(createUser),
      dataSourceId = pulumi.Input.asOptionalInput<int>(dataSourceId),
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      description = pulumi.Input.asOptionalInput<String>(description),
      modifyTime = pulumi.Input.asOptionalInput<int>(modifyTime),
      modifyUser = pulumi.Input.asOptionalInput<String>(modifyUser),
      projectId = pulumi.Input.asOptionalInput<int>(projectId),
      qualifiedName = pulumi.Input.asOptionalInput<String>(qualifiedName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionProperties': ?connectionProperties,
      'connectionPropertiesMode': ?connectionPropertiesMode,
      'createTime': ?createTime,
      'createUser': ?createUser,
      'dataSourceId': ?dataSourceId,
      'dataSourceName': ?dataSourceName,
      'description': ?description,
      'modifyTime': ?modifyTime,
      'modifyUser': ?modifyUser,
      'projectId': ?projectId,
      'qualifiedName': ?qualifiedName,
      'type': ?type,
    };
  }

  factory DataSourceState.fromMap(Map<String, dynamic> map) {
    return DataSourceState(
      connectionProperties: map['connectionProperties'] == null ? null : pulumi.Output.create<String>(map['connectionProperties'] as String),
      connectionPropertiesMode: map['connectionPropertiesMode'] == null ? null : pulumi.Output.create<String>(map['connectionPropertiesMode'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      createUser: map['createUser'] == null ? null : pulumi.Output.create<String>(map['createUser'] as String),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<int>(map['dataSourceId'] as int),
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      modifyTime: map['modifyTime'] == null ? null : pulumi.Output.create<int>(map['modifyTime'] as int),
      modifyUser: map['modifyUser'] == null ? null : pulumi.Output.create<String>(map['modifyUser'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<int>(map['projectId'] as int),
      qualifiedName: map['qualifiedName'] == null ? null : pulumi.Output.create<String>(map['qualifiedName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

