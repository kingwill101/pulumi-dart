// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_data_source_args_doc}
/// The set of arguments for DataSource.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_data_source_args_doc}
class DataSourceArgs {
  /// The name of the datasource resource.
  final pulumi.Input<String>? dataSourceName;
  /// The kind of the DataSource.
  final pulumi.Input<String> kind;
  /// The data source properties in raw json format, each kind of data source have it's own schema.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DataSourceArgs].
  /// [dataSourceName] The name of the datasource resource.
  /// [kind] The kind of the DataSource.
  /// [properties] The data source properties in raw json format, each kind of data source have it's own schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  DataSourceArgs({
    String? dataSourceName,
    required String kind,
    required dynamic properties,
    required String resourceGroupName,
    Map<String, String>? tags,
    required String workspaceName,
  }) :
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      kind = pulumi.Input.asInput<String>(kind),
      properties = pulumi.Input.asInput<dynamic>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
      'kind': kind,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      dataSourceName: map['dataSourceName'] == null ? null : map['dataSourceName'] as String,
      kind: map['kind'] as String,
      properties: map['properties'],
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceName: map['workspaceName'] as String,
    );
  }
}

