// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'studio_application_instance.dart';

/// {@template pulumi_bp_studio_application_studio_application_args_doc}
/// The set of arguments for StudioApplication.
/// {@endtemplate}
/// {@macro pulumi_bp_studio_application_studio_application_args_doc}
class StudioApplicationArgs {
  /// The name of the application.
  final pulumi.Input<String> applicationName;
  /// The id of the area.
  final pulumi.Input<String>? areaId;
  /// The configuration of the application.
  final pulumi.Input<Map<String, String>>? configuration;
  /// The instance list. Support the creation of instances in the existing vpc under the application. See the following `Block instances`.
  final pulumi.Input<List<StudioApplicationInstance>>? instances;
  /// The id of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The id of the template.
  final pulumi.Input<String> templateId;
  /// The variables of the application.
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [StudioApplicationArgs].
  /// [applicationName] The name of the application.
  /// [areaId] The id of the area.
  /// [configuration] The configuration of the application.
  /// [instances] The instance list. Support the creation of instances in the existing vpc under the application. See the following `Block instances`.
  /// [resourceGroupId] The id of the resource group.
  /// [templateId] The id of the template.
  /// [variables] The variables of the application.
  StudioApplicationArgs({
    required this.applicationName,
    this.areaId,
    this.configuration,
    this.instances,
    this.resourceGroupId,
    required this.templateId,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'areaId': ?areaId,
      'configuration': ?configuration,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<StudioApplicationInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<StudioApplicationInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'templateId': templateId,
      'variables': ?variables,
    };
  }

  factory StudioApplicationArgs.fromMap(Map<String, dynamic> map) {
    return StudioApplicationArgs(
      applicationName: (map['applicationName'] as String).input(),
      areaId: map['areaId'] == null ? null : (map['areaId']! as String).input(),
      configuration: map['configuration'] == null ? null : ((map['configuration']! as Map).cast<String, String>()).input(),
      instances: map['instances'] == null ? null : (pulumi.Input.decodeList<StudioApplicationInstance>(map['instances']!, (value) => StudioApplicationInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      templateId: (map['templateId'] as String).input(),
      variables: map['variables'] == null ? null : ((map['variables']! as Map).cast<String, String>()).input(),
    );
  }
}

