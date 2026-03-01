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
  final pulumi.Input<Configuration>? configuration;
  /// Name of the Container App.
  final pulumi.Input<String>? containerAppName;
  /// Resource ID of environment.
  final pulumi.Input<String>? environmentId;
  /// The complex type of the extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// managed identities for the Container App to interact with other Azure services without maintaining any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used to render different experiences for resources of the same type; e.g. WorkflowApp is a kind of Microsoft.App/ContainerApps type. If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  /// Deprecated. Resource ID of the Container App's environment.
  final pulumi.Input<String>? managedEnvironmentId;
  /// Container App auto patch configuration.
  final pulumi.Input<ContainerAppPatchingConfiguration>? patchingConfiguration;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Container App versioned application definition.
  final pulumi.Input<Template>? template;
  /// Workload profile name to pin for container app execution.
  final pulumi.Input<String>? workloadProfileName;

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
  ContainerAppArgs({
    pulumi.Output<Configuration>? configuration,
    pulumi.Output<String>? containerAppName,
    pulumi.Output<String>? environmentId,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    pulumi.Output<String>? managedEnvironmentId,
    pulumi.Output<ContainerAppPatchingConfiguration>? patchingConfiguration,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Template>? template,
    pulumi.Output<String>? workloadProfileName,
  }) :
      configuration = pulumi.Input.asOptionalInput<Configuration>(configuration),
      containerAppName = pulumi.Input.asOptionalInput<String>(containerAppName),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      managedEnvironmentId = pulumi.Input.asOptionalInput<String>(managedEnvironmentId),
      patchingConfiguration = pulumi.Input.asOptionalInput<ContainerAppPatchingConfiguration>(patchingConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      template = pulumi.Input.asOptionalInput<Template>(template),
      workloadProfileName = pulumi.Input.asOptionalInput<String>(workloadProfileName);

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
      configuration: map['configuration'] == null ? null : pulumi.Output.create<Configuration>(Configuration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      containerAppName: map['containerAppName'] == null ? null : pulumi.Output.create<String>(map['containerAppName'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      managedEnvironmentId: map['managedEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['managedEnvironmentId'] as String),
      patchingConfiguration: map['patchingConfiguration'] == null ? null : pulumi.Output.create<ContainerAppPatchingConfiguration>(ContainerAppPatchingConfiguration.fromMap((map['patchingConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      template: map['template'] == null ? null : pulumi.Output.create<Template>(Template.fromMap((map['template'] as Map).cast<String, dynamic>())),
      workloadProfileName: map['workloadProfileName'] == null ? null : pulumi.Output.create<String>(map['workloadProfileName'] as String),
    );
  }
}

