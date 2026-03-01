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
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? profileName,
    pulumi.Output<ConfigurationProfileResourceProperties>? properties,
  }) :
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      properties = pulumi.Input.asOptionalInput<ConfigurationProfileResourceProperties>(properties);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ConfigurationProfileResourceProperties>(ConfigurationProfileResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
    );
  }
}

