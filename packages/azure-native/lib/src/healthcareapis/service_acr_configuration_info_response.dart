// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_oci_artifact_entry_response.dart';

/// Azure container registry configuration information
class ServiceAcrConfigurationInfoResponse {
  /// The list of the ACR login servers.
  final List<String>? loginServers;
  /// The list of Open Container Initiative (OCI) artifacts.
  final List<ServiceOciArtifactEntryResponse>? ociArtifacts;

  /// Creates a new [ServiceAcrConfigurationInfoResponse].
  /// [loginServers] The list of the ACR login servers.
  /// [ociArtifacts] The list of Open Container Initiative (OCI) artifacts.
  ServiceAcrConfigurationInfoResponse({
    this.loginServers,
    this.ociArtifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginServers': ?loginServers,
      'ociArtifacts': ?ociArtifacts == null ? null : pulumi.Input.encodeList<ServiceOciArtifactEntryResponse, Map<String, dynamic>>(ociArtifacts!, (value) => value.toMap()),
    };
  }

  factory ServiceAcrConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAcrConfigurationInfoResponse(
      loginServers: map['loginServers'] == null ? null : (map['loginServers'] as List).cast<String>(),
      ociArtifacts: map['ociArtifacts'] == null ? null : pulumi.Input.decodeList<ServiceOciArtifactEntryResponse>(map['ociArtifacts'], (value) => ServiceOciArtifactEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

