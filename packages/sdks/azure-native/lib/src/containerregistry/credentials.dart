// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_registry_credentials.dart';
import 'source_registry_credentials.dart';

/// The parameters that describes a set of credentials that will be used when a run is invoked.
class Credentials {
  /// Describes the credential parameters for accessing other custom registries. The key
  /// for the dictionary item will be the registry login server (myregistry.azurecr.io) and
  /// the value of the item will be the registry credentials for accessing the registry.
  final Map<String, CustomRegistryCredentials>? customRegistries;
  /// Describes the credential parameters for accessing the source registry.
  final SourceRegistryCredentials? sourceRegistry;

  /// Creates a new [Credentials].
  /// [customRegistries] Describes the credential parameters for accessing other custom registries. The key
  /// [sourceRegistry] Describes the credential parameters for accessing the source registry.
  Credentials({
    this.customRegistries,
    this.sourceRegistry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRegistries': ?customRegistries == null ? null : pulumi.Input.encodeMapValues<CustomRegistryCredentials, Map<String, dynamic>>(customRegistries!, (value) => value.toMap()),
      'sourceRegistry': ?sourceRegistry == null ? null : sourceRegistry!.toMap(),
    };
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    return Credentials(
      customRegistries: map['customRegistries'] == null ? null : pulumi.Input.decodeMapValues<CustomRegistryCredentials>(map['customRegistries'], (value) => CustomRegistryCredentials.fromMap((value as Map).cast<String, dynamic>())),
      sourceRegistry: map['sourceRegistry'] == null ? null : SourceRegistryCredentials.fromMap((map['sourceRegistry'] as Map).cast<String, dynamic>()),
    );
  }
}

