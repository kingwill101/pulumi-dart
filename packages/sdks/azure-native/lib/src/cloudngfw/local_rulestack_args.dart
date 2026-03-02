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
    this.associatedSubscriptions,
    this.defaultMode,
    this.description,
    this.identity,
    this.localRulestackName,
    this.location,
    this.minAppIdVersion,
    this.panEtag,
    this.panLocation,
    required this.resourceGroupName,
    this.scope,
    this.securityServices,
    this.tags,
  });

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
      associatedSubscriptions: map['associatedSubscriptions'] == null ? null : ((map['associatedSubscriptions']! as List).cast<String>()).input(),
      defaultMode: map['defaultMode'] == null ? null : (map['defaultMode']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      identity: map['identity'] == null ? null : (AzureResourceManagerManagedIdentityProperties.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      localRulestackName: map['localRulestackName'] == null ? null : (map['localRulestackName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minAppIdVersion: map['minAppIdVersion'] == null ? null : (map['minAppIdVersion']! as String).input(),
      panEtag: map['panEtag'] == null ? null : (map['panEtag']! as String).input(),
      panLocation: map['panLocation'] == null ? null : (map['panLocation']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      securityServices: map['securityServices'] == null ? null : (SecurityServices.fromMap((map['securityServices']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

