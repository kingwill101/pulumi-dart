// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_registry_credentials.dart';
import 'source_registry_credentials.dart';

/// The parameters that describes a set of credentials that will be used when a run is invoked.
class Credentials {
  /// Describes the credential parameters for accessing other custom registries. The key
  /// for the dictionary item will be the registry login server (myregistry.azurecr.io) and
  /// the value of the item will be the registry credentials for accessing the registry.
  final pulumi.Input<Map<String, CustomRegistryCredentials>>? customRegistries;
  /// Describes the credential parameters for accessing the source registry.
  final pulumi.Input<SourceRegistryCredentials>? sourceRegistry;

  /// Creates a new [Credentials].
  /// [customRegistries] Describes the credential parameters for accessing other custom registries. The key
  /// [sourceRegistry] Describes the credential parameters for accessing the source registry.
  Credentials({
    this.customRegistries,
    this.sourceRegistry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRegistries': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomRegistryCredentials>, Map<String, Map<String, dynamic>>>(customRegistries, (value) => pulumi.Input.encodeMapValues<CustomRegistryCredentials, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceRegistry': ?pulumi.Input.mapOptionalInputValue<SourceRegistryCredentials, Map<String, dynamic>>(sourceRegistry, (value) => value.toMap()),
    };
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    return Credentials(
      customRegistries: (() { final guardedValue = map['customRegistries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<CustomRegistryCredentials>(guardedValue, (value) => CustomRegistryCredentials.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceRegistry: (() { final guardedValue = map['sourceRegistry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceRegistryCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

