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
  final pulumi.Input<List<String>?>? associatedSubscriptions;
  /// Mode for default rules creation
  final pulumi.Input<dynamic>? defaultMode;
  /// rulestack description
  final pulumi.Input<String?>? description;
  /// GlobalRulestack resource name
  final pulumi.Input<String?>? globalRulestackName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<AzureResourceManagerManagedIdentityProperties?>? identity;
  /// Global Location
  final pulumi.Input<String?>? location;
  /// minimum version
  final pulumi.Input<String?>? minAppIdVersion;
  /// PanEtag info
  final pulumi.Input<String?>? panEtag;
  /// Rulestack Location, Required for GlobalRulestacks, Not for LocalRulestacks
  final pulumi.Input<String?>? panLocation;
  /// Rulestack Type
  final pulumi.Input<dynamic>? scope;
  /// Security Profile
  final pulumi.Input<SecurityServices?>? securityServices;

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
  const GlobalRulestackArgs({
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
      associatedSubscriptions: (() { final guardedValue = map['associatedSubscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultMode: (() { final guardedValue = map['defaultMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalRulestackName: (() { final guardedValue = map['globalRulestackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureResourceManagerManagedIdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minAppIdVersion: (() { final guardedValue = map['minAppIdVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      panEtag: (() { final guardedValue = map['panEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      panLocation: (() { final guardedValue = map['panLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      securityServices: (() { final guardedValue = map['securityServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityServices.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
