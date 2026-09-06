// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration.dart';
import 'container_app_patching_configuration.dart';
import 'extended_location.dart';
import 'managed_service_identity.dart';
import 'template.dart';

/// {@template pulumi_app_container_app_args_doc}
/// The set of arguments for ContainerApp.
/// {@endtemplate}
/// {@macro pulumi_app_container_app_args_doc}
class ContainerAppArgs {
  /// Non versioned Container App configuration properties.
  final pulumi.Input<Configuration?>? configuration;
  /// Name of the Container App.
  final pulumi.Input<String?>? containerAppName;
  /// Resource ID of environment.
  final pulumi.Input<String?>? environmentId;
  /// The complex type of the extended location.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// managed identities for the Container App to interact with other Azure services without maintaining any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// Metadata used to render different experiences for resources of the same type; e.g. WorkflowApp is a kind of Microsoft.App/ContainerApps type. If supported, the resource provider must validate and persist this value.
  final pulumi.Input<dynamic>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String?>? managedBy;
  /// Deprecated. Resource ID of the Container App's environment.
  final pulumi.Input<String?>? managedEnvironmentId;
  /// Container App auto patch configuration.
  final pulumi.Input<ContainerAppPatchingConfiguration?>? patchingConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Container App versioned application definition.
  final pulumi.Input<Template?>? template;
  /// Workload profile name to pin for container app execution.
  final pulumi.Input<String?>? workloadProfileName;

  /// Creates a new [ContainerAppArgs].
  /// [configuration] Non versioned Container App configuration properties.
  /// [containerAppName] Name of the Container App.
  /// [environmentId] Resource ID of environment.
  /// [extendedLocation] The complex type of the extended location.
  /// [identity] managed identities for the Container App to interact with other Azure services without maintaining any secrets or credentials in code.
  /// [kind] Metadata used to render different experiences for resources of the same type; e.g. WorkflowApp is a kind of Microsoft.App/ContainerApps type. If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [managedEnvironmentId] Deprecated. Resource ID of the Container App's environment.
  /// [patchingConfiguration] Container App auto patch configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [template] Container App versioned application definition.
  /// [workloadProfileName] Workload profile name to pin for container app execution.
  const ContainerAppArgs({
    this.configuration,
    this.containerAppName,
    this.environmentId,
    this.extendedLocation,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.managedEnvironmentId,
    this.patchingConfiguration,
    required this.resourceGroupName,
    this.tags,
    this.template,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<Configuration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'containerAppName': ?containerAppName,
      'environmentId': ?environmentId,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'managedEnvironmentId': ?managedEnvironmentId,
      'patchingConfiguration': ?pulumi.Input.mapOptionalInputValue<ContainerAppPatchingConfiguration, Map<String, dynamic>>(patchingConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'template': ?pulumi.Input.mapOptionalInputValue<Template, Map<String, dynamic>>(template, (value) => value.toMap()),
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory ContainerAppArgs.fromMap(Map<String, dynamic> map) {
    return ContainerAppArgs(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerAppName: (() { final guardedValue = map['containerAppName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedEnvironmentId: (() { final guardedValue = map['managedEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchingConfiguration: (() { final guardedValue = map['patchingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerAppPatchingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Template.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadProfileName: (() { final guardedValue = map['workloadProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
