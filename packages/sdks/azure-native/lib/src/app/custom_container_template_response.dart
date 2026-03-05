// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_container_response.dart';
import 'session_ingress_response.dart';
import 'session_registry_credentials_response.dart';

/// Custom container configuration.
class CustomContainerTemplateResponse {
  /// List of container definitions for the sessions of the session pool.
  final pulumi.Input<List<SessionContainerResponse>>? containers;
  /// Session pool ingress configuration.
  final pulumi.Input<SessionIngressResponse>? ingress;
  /// Private container registry credentials for containers used by the sessions of the session pool.
  final pulumi.Input<SessionRegistryCredentialsResponse>? registryCredentials;

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
      'containers': ?pulumi.Input.mapOptionalInputValue<List<SessionContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<SessionContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<SessionIngressResponse, Map<String, dynamic>>(ingress, (value) => value.toMap()),
      'registryCredentials': ?pulumi.Input.mapOptionalInputValue<SessionRegistryCredentialsResponse, Map<String, dynamic>>(registryCredentials, (value) => value.toMap()),
    };
  }

  factory CustomContainerTemplateResponse.fromMap(Map<String, dynamic> map) {
    return CustomContainerTemplateResponse(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SessionContainerResponse>(guardedValue, (value) => SessionContainerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionIngressResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registryCredentials: (() { final guardedValue = map['registryCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionRegistryCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

