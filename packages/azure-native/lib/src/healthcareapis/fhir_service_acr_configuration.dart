// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_oci_artifact_entry.dart';

/// Azure container registry configuration information
class FhirServiceAcrConfiguration {
  /// The list of the Azure container registry login servers.
  final List<String>? loginServers;
  /// The list of Open Container Initiative (OCI) artifacts.
  final List<ServiceOciArtifactEntry>? ociArtifacts;

  /// Creates a new [FhirServiceAcrConfiguration].
  /// [loginServers] The list of the Azure container registry login servers.
  /// [ociArtifacts] The list of Open Container Initiative (OCI) artifacts.
  FhirServiceAcrConfiguration({
    this.loginServers,
    this.ociArtifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginServers': ?loginServers,
      'ociArtifacts': ?ociArtifacts == null ? null : pulumi.Input.encodeList<ServiceOciArtifactEntry, Map<String, dynamic>>(ociArtifacts!, (value) => value.toMap()),
    };
  }

  factory FhirServiceAcrConfiguration.fromMap(Map<String, dynamic> map) {
    return FhirServiceAcrConfiguration(
      loginServers: map['loginServers'] == null ? null : (map['loginServers'] as List).cast<String>(),
      ociArtifacts: map['ociArtifacts'] == null ? null : pulumi.Input.decodeList<ServiceOciArtifactEntry>(map['ociArtifacts'], (value) => ServiceOciArtifactEntry.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

