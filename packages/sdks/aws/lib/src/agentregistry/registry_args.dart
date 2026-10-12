// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_approval_configuration.dart';
import 'registry_auto_detection_configuration.dart';
import 'registry_discovery_configuration.dart';
import 'registry_encryption_configuration.dart';
import 'registry_timeouts.dart';

/// {@template pulumi_agentregistry_registry_registry_args_doc}
/// The set of arguments for Registry.
/// {@endtemplate}
/// {@macro pulumi_agentregistry_registry_registry_args_doc}
class RegistryArgs {
  /// Approval configuration for registry records. See below.
  final pulumi.Input<RegistryApprovalConfiguration?>? approvalConfiguration;
  /// Auto-detection configuration for the registry. When provided, the registry is automatically populated with resources discovered according to the configuration. See below.
  final pulumi.Input<RegistryAutoDetectionConfiguration?>? autoDetectionConfiguration;
  /// Description of the registry. Maximum length of 4096 characters.
  final pulumi.Input<String?>? description;
  /// Discovery configuration for the registry. See below.
  final pulumi.Input<RegistryDiscoveryConfiguration> discoveryConfiguration;
  /// Server-side encryption configuration for the registry. See below.
  final pulumi.Input<RegistryEncryptionConfiguration?>? encryptionConfiguration;
  /// Name of the registry. Must start with a letter or digit. Valid characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen), . (dot), and / (forward slash). The name can have up to 64 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<RegistryTimeouts?>? timeouts;

  /// Creates a new [RegistryArgs].
  /// [approvalConfiguration] Approval configuration for registry records. See below.
  /// [autoDetectionConfiguration] Auto-detection configuration for the registry. When provided, the registry is automatically populated with resources discovered according to the configuration. See below.
  /// [description] Description of the registry. Maximum length of 4096 characters.
  /// [discoveryConfiguration] Discovery configuration for the registry. See below.
  /// [encryptionConfiguration] Server-side encryption configuration for the registry. See below.
  /// [name] Name of the registry. Must start with a letter or digit. Valid characters are a-z, A-Z, 0-9, _ (underscore), - (hyphen), . (dot), and / (forward slash). The name can have up to 64 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const RegistryArgs({
    this.approvalConfiguration,
    this.autoDetectionConfiguration,
    this.description,
    required this.discoveryConfiguration,
    this.encryptionConfiguration,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalConfiguration': ?pulumi.Input.mapOptionalInputValue<RegistryApprovalConfiguration, Map<String, dynamic>>(approvalConfiguration, (value) => value.toMap()),
      'autoDetectionConfiguration': ?pulumi.Input.mapOptionalInputValue<RegistryAutoDetectionConfiguration, Map<String, dynamic>>(autoDetectionConfiguration, (value) => value.toMap()),
      'description': ?description,
      'discoveryConfiguration': pulumi.Input.mapInputValue<RegistryDiscoveryConfiguration, Map<String, dynamic>>(discoveryConfiguration, (value) => value.toMap()),
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<RegistryEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RegistryTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory RegistryArgs.fromMap(Map<String, dynamic> map) {
    return RegistryArgs(
      approvalConfiguration: (() { final guardedValue = map['approvalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryApprovalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoDetectionConfiguration: (() { final guardedValue = map['autoDetectionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryAutoDetectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveryConfiguration: pulumi.Input.fromValue(RegistryDiscoveryConfiguration.fromMap((map['discoveryConfiguration']! as Map).cast<String, dynamic>())),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
