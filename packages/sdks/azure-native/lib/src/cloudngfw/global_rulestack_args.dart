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
    this.associatedSubscriptions,
    this.defaultMode,
    this.description,
    this.globalRulestackName,
    this.identity,
    this.location,
    this.minAppIdVersion,
    this.panEtag,
    this.panLocation,
    this.scope,
    this.securityServices,
  });

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
      associatedSubscriptions: map['associatedSubscriptions'] == null ? null : ((map['associatedSubscriptions'] as List).cast<String>()).input(),
      defaultMode: map['defaultMode'] == null ? null : (map['defaultMode'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      globalRulestackName: map['globalRulestackName'] == null ? null : (map['globalRulestackName'] as String).input(),
      identity: map['identity'] == null ? null : (AzureResourceManagerManagedIdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      minAppIdVersion: map['minAppIdVersion'] == null ? null : (map['minAppIdVersion'] as String).input(),
      panEtag: map['panEtag'] == null ? null : (map['panEtag'] as String).input(),
      panLocation: map['panLocation'] == null ? null : (map['panLocation'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      securityServices: map['securityServices'] == null ? null : (SecurityServices.fromMap((map['securityServices'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

