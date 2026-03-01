// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_managed_identity_properties.dart';
import 'security_services.dart';

/// {@template pulumi_cloudngfw_global_rulestack_args_doc}
/// The set of arguments for GlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_global_rulestack_args_doc}
class GlobalRulestackArgs {
  /// subscription scope of global rulestack
  final pulumi.Input<List<String>>? associatedSubscriptions;
  /// Mode for default rules creation
  final pulumi.Input<String>? defaultMode;
  /// rulestack description
  final pulumi.Input<String>? description;
  /// GlobalRulestack resource name
  final pulumi.Input<String>? globalRulestackName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<AzureResourceManagerManagedIdentityProperties>? identity;
  /// Global Location
  final pulumi.Input<String>? location;
  /// minimum version
  final pulumi.Input<String>? minAppIdVersion;
  /// PanEtag info
  final pulumi.Input<String>? panEtag;
  /// Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  final pulumi.Input<String>? panLocation;
  /// Rulestack Type
  final pulumi.Input<String>? scope;
  /// Security Profile
  final pulumi.Input<SecurityServices>? securityServices;

  /// Creates a new [GlobalRulestackArgs].
  /// [associatedSubscriptions] subscription scope of global rulestack
  /// [defaultMode] Mode for default rules creation
  /// [description] rulestack description
  /// [globalRulestackName] GlobalRulestack resource name
  /// [identity] The managed service identities assigned to this resource.
  /// [location] Global Location
  /// [minAppIdVersion] minimum version
  /// [panEtag] PanEtag info
  /// [panLocation] Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  /// [scope] Rulestack Type
  /// [securityServices] Security Profile
  GlobalRulestackArgs({
    pulumi.Output<List<String>>? associatedSubscriptions,
    pulumi.Output<String>? defaultMode,
    pulumi.Output<String>? description,
    pulumi.Output<String>? globalRulestackName,
    pulumi.Output<AzureResourceManagerManagedIdentityProperties>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minAppIdVersion,
    pulumi.Output<String>? panEtag,
    pulumi.Output<String>? panLocation,
    pulumi.Output<String>? scope,
    pulumi.Output<SecurityServices>? securityServices,
  }) :
      associatedSubscriptions = pulumi.Input.asOptionalInput<List<String>>(associatedSubscriptions),
      defaultMode = pulumi.Input.asOptionalInput<String>(defaultMode),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalRulestackName = pulumi.Input.asOptionalInput<String>(globalRulestackName),
      identity = pulumi.Input.asOptionalInput<AzureResourceManagerManagedIdentityProperties>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      minAppIdVersion = pulumi.Input.asOptionalInput<String>(minAppIdVersion),
      panEtag = pulumi.Input.asOptionalInput<String>(panEtag),
      panLocation = pulumi.Input.asOptionalInput<String>(panLocation),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      securityServices = pulumi.Input.asOptionalInput<SecurityServices>(securityServices);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedSubscriptions': ?associatedSubscriptions,
      'defaultMode': ?defaultMode,
      'description': ?description,
      'globalRulestackName': ?globalRulestackName,
      'identity': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerManagedIdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minAppIdVersion': ?minAppIdVersion,
      'panEtag': ?panEtag,
      'panLocation': ?panLocation,
      'scope': ?scope,
      'securityServices': ?pulumi.Input.mapOptionalInputValue<SecurityServices, Map<String, dynamic>>(securityServices, (value) => value.toMap()),
    };
  }

  factory GlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GlobalRulestackArgs(
      associatedSubscriptions: map['associatedSubscriptions'] == null ? null : pulumi.Output.create<List<String>>((map['associatedSubscriptions'] as List).cast<String>()),
      defaultMode: map['defaultMode'] == null ? null : pulumi.Output.create<String>(map['defaultMode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalRulestackName: map['globalRulestackName'] == null ? null : pulumi.Output.create<String>(map['globalRulestackName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<AzureResourceManagerManagedIdentityProperties>(AzureResourceManagerManagedIdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minAppIdVersion: map['minAppIdVersion'] == null ? null : pulumi.Output.create<String>(map['minAppIdVersion'] as String),
      panEtag: map['panEtag'] == null ? null : pulumi.Output.create<String>(map['panEtag'] as String),
      panLocation: map['panLocation'] == null ? null : pulumi.Output.create<String>(map['panLocation'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      securityServices: map['securityServices'] == null ? null : pulumi.Output.create<SecurityServices>(SecurityServices.fromMap((map['securityServices'] as Map).cast<String, dynamic>())),
    );
  }
}

