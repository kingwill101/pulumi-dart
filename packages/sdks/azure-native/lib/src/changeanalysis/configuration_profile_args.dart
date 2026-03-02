// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_resource_properties.dart';
import 'resource_identity.dart';

/// {@template pulumi_changeanalysis_configuration_profile_args_doc}
/// The set of arguments for ConfigurationProfile.
/// {@endtemplate}
/// {@macro pulumi_changeanalysis_configuration_profile_args_doc}
class ConfigurationProfileArgs {
  /// The identity block returned by ARM resource that supports managed identity.
  final pulumi.Input<ResourceIdentity>? identity;
  /// The location where the resource is to be deployed.
  final pulumi.Input<String>? location;
  /// The name of the configuration profile. The profile name should be set to 'default', all other names will be overwritten.
  final pulumi.Input<String>? profileName;
  /// The properties of a configuration profile.
  final pulumi.Input<ConfigurationProfileResourceProperties>? properties;

  /// Creates a new [ConfigurationProfileArgs].
  /// [identity] The identity block returned by ARM resource that supports managed identity.
  /// [location] The location where the resource is to be deployed.
  /// [profileName] The name of the configuration profile. The profile name should be set to 'default', all other names will be overwritten.
  /// [properties] The properties of a configuration profile.
  ConfigurationProfileArgs({
    this.identity,
    this.location,
    this.profileName,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'profileName': ?profileName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationProfileResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileArgs(
      identity: map['identity'] == null ? null : (ResourceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      profileName: map['profileName'] == null ? null : (map['profileName']! as String).input(),
      properties: map['properties'] == null ? null : (ConfigurationProfileResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

