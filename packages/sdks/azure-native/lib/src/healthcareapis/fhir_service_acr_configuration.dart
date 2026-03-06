// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_oci_artifact_entry.dart';

/// Azure container registry configuration information
class FhirServiceAcrConfiguration {
  /// The list of the Azure container registry login servers.
  final pulumi.Input<List<String>>? loginServers;
  /// The list of Open Container Initiative (OCI) artifacts.
  final pulumi.Input<List<ServiceOciArtifactEntry>>? ociArtifacts;

  /// Creates a new [FhirServiceAcrConfiguration].
  /// [loginServers] The list of the Azure container registry login servers.
  /// [ociArtifacts] The list of Open Container Initiative (OCI) artifacts.
  const FhirServiceAcrConfiguration({
    this.loginServers,
    this.ociArtifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginServers': ?loginServers,
      'ociArtifacts': ?pulumi.Input.mapOptionalInputValue<List<ServiceOciArtifactEntry>, List<Map<String, dynamic>>>(ociArtifacts, (value) => pulumi.Input.encodeList<ServiceOciArtifactEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FhirServiceAcrConfiguration.fromMap(Map<String, dynamic> map) {
    return FhirServiceAcrConfiguration(
      loginServers: (() { final guardedValue = map['loginServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ociArtifacts: (() { final guardedValue = map['ociArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceOciArtifactEntry>(guardedValue, (value) => ServiceOciArtifactEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

