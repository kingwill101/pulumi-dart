// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_managed_identity_properties.dart';
import 'security_services.dart';

/// {@template pulumi_cloudngfw_local_rulestack_args_doc}
/// The set of arguments for LocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_local_rulestack_args_doc}
class LocalRulestackArgs {
  /// subscription scope of global rulestack
  final pulumi.Input<List<String>>? associatedSubscriptions;
  /// Mode for default rules creation
  final pulumi.Input<String>? defaultMode;
  /// rulestack description
  final pulumi.Input<String>? description;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<AzureResourceManagerManagedIdentityProperties>? identity;
  /// LocalRulestack resource name
  final pulumi.Input<String>? localRulestackName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// minimum version
  final pulumi.Input<String>? minAppIdVersion;
  /// PanEtag info
  final pulumi.Input<String>? panEtag;
  /// Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  final pulumi.Input<String>? panLocation;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Rulestack Type
  final pulumi.Input<String>? scope;
  /// Security Profile
  final pulumi.Input<SecurityServices>? securityServices;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocalRulestackArgs].
  /// [associatedSubscriptions] subscription scope of global rulestack
  /// [defaultMode] Mode for default rules creation
  /// [description] rulestack description
  /// [identity] The managed service identities assigned to this resource.
  /// [localRulestackName] LocalRulestack resource name
  /// [location] The geo-location where the resource lives
  /// [minAppIdVersion] minimum version
  /// [panEtag] PanEtag info
  /// [panLocation] Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Rulestack Type
  /// [securityServices] Security Profile
  /// [tags] Resource tags.
  LocalRulestackArgs({
    pulumi.Output<List<String>>? associatedSubscriptions,
    pulumi.Output<String>? defaultMode,
    pulumi.Output<String>? description,
    pulumi.Output<AzureResourceManagerManagedIdentityProperties>? identity,
    pulumi.Output<String>? localRulestackName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minAppIdVersion,
    pulumi.Output<String>? panEtag,
    pulumi.Output<String>? panLocation,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scope,
    pulumi.Output<SecurityServices>? securityServices,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      associatedSubscriptions = pulumi.Input.asOptionalInput<List<String>>(associatedSubscriptions),
      defaultMode = pulumi.Input.asOptionalInput<String>(defaultMode),
      description = pulumi.Input.asOptionalInput<String>(description),
      identity = pulumi.Input.asOptionalInput<AzureResourceManagerManagedIdentityProperties>(identity),
      localRulestackName = pulumi.Input.asOptionalInput<String>(localRulestackName),
      location = pulumi.Input.asOptionalInput<String>(location),
      minAppIdVersion = pulumi.Input.asOptionalInput<String>(minAppIdVersion),
      panEtag = pulumi.Input.asOptionalInput<String>(panEtag),
      panLocation = pulumi.Input.asOptionalInput<String>(panLocation),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      securityServices = pulumi.Input.asOptionalInput<SecurityServices>(securityServices),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSubscriptions': ?associatedSubscriptions,
      'defaultMode': ?defaultMode,
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerManagedIdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localRulestackName': ?localRulestackName,
      'location': ?location,
      'minAppIdVersion': ?minAppIdVersion,
      'panEtag': ?panEtag,
      'panLocation': ?panLocation,
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'securityServices': ?pulumi.Input.mapOptionalInputValue<SecurityServices, Map<String, dynamic>>(securityServices, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory LocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return LocalRulestackArgs(
      associatedSubscriptions: map['associatedSubscriptions'] == null ? null : pulumi.Output.create<List<String>>((map['associatedSubscriptions'] as List).cast<String>()),
      defaultMode: map['defaultMode'] == null ? null : pulumi.Output.create<String>(map['defaultMode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<AzureResourceManagerManagedIdentityProperties>(AzureResourceManagerManagedIdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localRulestackName: map['localRulestackName'] == null ? null : pulumi.Output.create<String>(map['localRulestackName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minAppIdVersion: map['minAppIdVersion'] == null ? null : pulumi.Output.create<String>(map['minAppIdVersion'] as String),
      panEtag: map['panEtag'] == null ? null : pulumi.Output.create<String>(map['panEtag'] as String),
      panLocation: map['panLocation'] == null ? null : pulumi.Output.create<String>(map['panLocation'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      securityServices: map['securityServices'] == null ? null : pulumi.Output.create<SecurityServices>(SecurityServices.fromMap((map['securityServices'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

