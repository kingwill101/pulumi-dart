// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_container.dart';
import 'session_ingress.dart';
import 'session_registry_credentials.dart';

/// Custom container configuration.
class CustomContainerTemplate {
  /// List of container definitions for the sessions of the session pool.
  final List<SessionContainer>? containers;
  /// Session pool ingress configuration.
  final SessionIngress? ingress;
  /// Private container registry credentials for containers used by the sessions of the session pool.
  final SessionRegistryCredentials? registryCredentials;

  /// Creates a new [CustomContainerTemplate].
  /// [containers] List of container definitions for the sessions of the session pool.
  /// [ingress] Session pool ingress configuration.
  /// [registryCredentials] Private container registry credentials for containers used by the sessions of the session pool.
  CustomContainerTemplate({
    this.containers,
    this.ingress,
    this.registryCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers == null ? null : pulumi.Input.encodeList<SessionContainer, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'ingress': ?ingress == null ? null : ingress!.toMap(),
      'registryCredentials': ?registryCredentials == null ? null : registryCredentials!.toMap(),
    };
  }

  factory CustomContainerTemplate.fromMap(Map<String, dynamic> map) {
    return CustomContainerTemplate(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<SessionContainer>(map['containers'], (value) => SessionContainer.fromMap((value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : SessionIngress.fromMap((map['ingress'] as Map).cast<String, dynamic>()),
      registryCredentials: map['registryCredentials'] == null ? null : SessionRegistryCredentials.fromMap((map['registryCredentials'] as Map).cast<String, dynamic>()),
    );
  }
}

