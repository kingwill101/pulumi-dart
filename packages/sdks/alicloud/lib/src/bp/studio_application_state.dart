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
    pulumi.Output<String>? applicationName,
    pulumi.Output<String>? areaId,
    pulumi.Output<Map<String, String>>? configuration,
    pulumi.Output<List<StudioApplicationInstance>>? instances,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? templateId,
    pulumi.Output<Map<String, String>>? variables,
  }) :
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      areaId = pulumi.Input.asOptionalInput<String>(areaId),
      configuration = pulumi.Input.asOptionalInput<Map<String, String>>(configuration),
      instances = pulumi.Input.asOptionalInput<List<StudioApplicationInstance>>(instances),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      variables = pulumi.Input.asOptionalInput<Map<String, String>>(variables);

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
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      areaId: map['areaId'] == null ? null : pulumi.Output.create<String>(map['areaId'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<Map<String, String>>((map['configuration'] as Map).cast<String, String>()),
      instances: map['instances'] == null ? null : pulumi.Output.create<List<StudioApplicationInstance>>(pulumi.Input.decodeList<StudioApplicationInstance>(map['instances'], (value) => StudioApplicationInstance.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      variables: map['variables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['variables'] as Map).cast<String, String>()),
    );
  }
}

