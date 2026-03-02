// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'studio_application_instance.dart';

/// Input properties used for looking up and filtering StudioApplication resources.
class StudioApplicationState {
  /// The name of the application.
  final pulumi.Input<String>? applicationName;
  /// The id of the area.
  final pulumi.Input<String>? areaId;
  /// The configuration of the application.
  final pulumi.Input<Map<String, String>>? configuration;
  /// The instance list. Support the creation of instances in the existing vpc under the application. See the following `Block instances`.
  final pulumi.Input<List<StudioApplicationInstance>>? instances;
  /// The id of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the Application.
  final pulumi.Input<String>? status;
  /// The id of the template.
  final pulumi.Input<String>? templateId;
  /// The variables of the application.
  final pulumi.Input<Map<String, String>>? variables;

  /// Creates a new [StudioApplicationState].
  /// [applicationName] The name of the application.
  /// [areaId] The id of the area.
  /// [configuration] The configuration of the application.
  /// [instances] The instance list. Support the creation of instances in the existing vpc under the application. See the following `Block instances`.
  /// [resourceGroupId] The id of the resource group.
  /// [status] The status of the Application.
  /// [templateId] The id of the template.
  /// [variables] The variables of the application.
  StudioApplicationState({
    this.applicationName,
    this.areaId,
    this.configuration,
    this.instances,
    this.resourceGroupId,
    this.status,
    this.templateId,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'areaId': ?areaId,
      'configuration': ?configuration,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<StudioApplicationInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<StudioApplicationInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'templateId': ?templateId,
      'variables': ?variables,
    };
  }

  factory StudioApplicationState.fromMap(Map<String, dynamic> map) {
    return StudioApplicationState(
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      areaId: map['areaId'] == null ? null : (map['areaId']! as String).input(),
      configuration: map['configuration'] == null ? null : ((map['configuration']! as Map).cast<String, String>()).input(),
      instances: map['instances'] == null ? null : (pulumi.Input.decodeList<StudioApplicationInstance>(map['instances']!, (value) => StudioApplicationInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
      variables: map['variables'] == null ? null : ((map['variables']! as Map).cast<String, String>()).input(),
    );
  }
}

