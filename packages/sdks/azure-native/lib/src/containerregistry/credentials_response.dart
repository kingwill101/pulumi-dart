// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_registry_credentials_response.dart';
import 'source_registry_credentials_response.dart';

/// The parameters that describes a set of credentials that will be used when a run is invoked.
class CredentialsResponse {
  /// Describes the credential parameters for accessing other custom registries. The key
  /// for the dictionary item will be the registry login server (myregistry.azurecr.io) and
  /// the value of the item will be the registry credentials for accessing the registry.
  final pulumi.Input<Map<String, CustomRegistryCredentialsResponse>>? customRegistries;
  /// Describes the credential parameters for accessing the source registry.
  final pulumi.Input<SourceRegistryCredentialsResponse>? sourceRegistry;

  /// Creates a new [CredentialsResponse].
  /// [customRegistries] Describes the credential parameters for accessing other custom registries. The key
  /// [sourceRegistry] Describes the credential parameters for accessing the source registry.
  CredentialsResponse({
    this.customRegistries,
    this.sourceRegistry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRegistries': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomRegistryCredentialsResponse>, Map<String, Map<String, dynamic>>>(customRegistries, (value) => pulumi.Input.encodeMapValues<CustomRegistryCredentialsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceRegistry': ?pulumi.Input.mapOptionalInputValue<SourceRegistryCredentialsResponse, Map<String, dynamic>>(sourceRegistry, (value) => value.toMap()),
    };
  }

  factory CredentialsResponse.fromMap(Map<String, dynamic> map) {
    return CredentialsResponse(
      customRegistries: (() { final guardedValue = map['customRegistries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<CustomRegistryCredentialsResponse>(guardedValue, (value) => CustomRegistryCredentialsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceRegistry: (() { final guardedValue = map['sourceRegistry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceRegistryCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

