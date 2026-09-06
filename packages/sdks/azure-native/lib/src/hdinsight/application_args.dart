// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_properties.dart';

/// {@template pulumi_hdinsight_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_application_args_doc}
class ApplicationArgs {
  /// The constant value for the application name.
  final pulumi.Input<String?>? applicationName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The properties of the application.
  final pulumi.Input<ApplicationProperties?>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The tags for the application.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationName] The constant value for the application name.
  /// [clusterName] The name of the cluster.
  /// [properties] The properties of the application.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] The tags for the application.
  const ApplicationArgs({
    this.applicationName,
    required this.clusterName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
