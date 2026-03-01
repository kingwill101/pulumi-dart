// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_container_response.dart';
import 'session_ingress_response.dart';
import 'session_registry_credentials_response.dart';

/// Custom container configuration.
class CustomContainerTemplateResponse {
  /// List of container definitions for the sessions of the session pool.
  final List<SessionContainerResponse>? containers;
  /// Session pool ingress configuration.
  final SessionIngressResponse? ingress;
  /// Private container registry credentials for containers used by the sessions of the session pool.
  final SessionRegistryCredentialsResponse? registryCredentials;

  /// Creates a new [CustomContainerTemplateResponse].
  /// [containers] List of container definitions for the sessions of the session pool.
  /// [ingress] Session pool ingress configuration.
  /// [registryCredentials] Private container registry credentials for containers used by the sessions of the session pool.
  CustomContainerTemplateResponse({
    this.containers,
    this.ingress,
    this.registryCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers == null ? null : pulumi.Input.encodeList<SessionContainerResponse, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'ingress': ?ingress == null ? null : ingress!.toMap(),
      'registryCredentials': ?registryCredentials == null ? null : registryCredentials!.toMap(),
    };
  }

  factory CustomContainerTemplateResponse.fromMap(Map<String, dynamic> map) {
    return CustomContainerTemplateResponse(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<SessionContainerResponse>(map['containers'], (value) => SessionContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : SessionIngressResponse.fromMap((map['ingress'] as Map).cast<String, dynamic>()),
      registryCredentials: map['registryCredentials'] == null ? null : SessionRegistryCredentialsResponse.fromMap((map['registryCredentials'] as Map).cast<String, dynamic>()),
    );
  }
}

