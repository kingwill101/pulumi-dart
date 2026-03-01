// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_properties.dart';

/// {@template pulumi_hdinsight_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_application_args_doc}
class ApplicationArgs {
  /// The constant value for the application name.
  final pulumi.Input<String>? applicationName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The properties of the application.
  final pulumi.Input<ApplicationProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The tags for the application.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationName] The constant value for the application name.
  /// [clusterName] The name of the cluster.
  /// [properties] The properties of the application.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] The tags for the application.
  ApplicationArgs({
    String? applicationName,
    required String clusterName,
    ApplicationProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      properties = pulumi.Input.asOptionalInput<ApplicationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'clusterName': clusterName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ApplicationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      clusterName: map['clusterName'] as String,
      properties: map['properties'] == null ? null : ApplicationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

