// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_container.dart';
import 'session_ingress.dart';
import 'session_registry_credentials.dart';

/// Custom container configuration.
class CustomContainerTemplate {
  /// List of container definitions for the sessions of the session pool.
  final pulumi.Input<List<SessionContainer>>? containers;
  /// Session pool ingress configuration.
  final pulumi.Input<SessionIngress>? ingress;
  /// Private container registry credentials for containers used by the sessions of the session pool.
  final pulumi.Input<SessionRegistryCredentials>? registryCredentials;

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
      'containers': ?pulumi.Input.mapOptionalInputValue<List<SessionContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<SessionContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<SessionIngress, Map<String, dynamic>>(ingress, (value) => value.toMap()),
      'registryCredentials': ?pulumi.Input.mapOptionalInputValue<SessionRegistryCredentials, Map<String, dynamic>>(registryCredentials, (value) => value.toMap()),
    };
  }

  factory CustomContainerTemplate.fromMap(Map<String, dynamic> map) {
    return CustomContainerTemplate(
      containers: map['containers'] == null ? null : (pulumi.Input.decodeList<SessionContainer>(map['containers']!, (value) => SessionContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingress: map['ingress'] == null ? null : (SessionIngress.fromMap((map['ingress']! as Map).cast<String, dynamic>())).input(),
      registryCredentials: map['registryCredentials'] == null ? null : (SessionRegistryCredentials.fromMap((map['registryCredentials']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

