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
    this.connectionProperties,
    this.connectionPropertiesMode,
    this.createTime,
    this.createUser,
    this.dataSourceId,
    this.dataSourceName,
    this.description,
    this.modifyTime,
    this.modifyUser,
    this.projectId,
    this.qualifiedName,
    this.type,
  });

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
      connectionProperties: map['connectionProperties'] == null ? null : (map['connectionProperties']! as String).input(),
      connectionPropertiesMode: map['connectionPropertiesMode'] == null ? null : (map['connectionPropertiesMode']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as int).input(),
      createUser: map['createUser'] == null ? null : (map['createUser']! as String).input(),
      dataSourceId: map['dataSourceId'] == null ? null : (map['dataSourceId']! as int).input(),
      dataSourceName: map['dataSourceName'] == null ? null : (map['dataSourceName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      modifyTime: map['modifyTime'] == null ? null : (map['modifyTime']! as int).input(),
      modifyUser: map['modifyUser'] == null ? null : (map['modifyUser']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as int).input(),
      qualifiedName: map['qualifiedName'] == null ? null : (map['qualifiedName']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

