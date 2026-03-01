// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_secret_group_response.dart';

/// Describes the OS profile for the cloud service.
class CloudServiceOsProfileResponse {
  /// Specifies set of certificates that should be installed onto the role instances.
  final List<CloudServiceVaultSecretGroupResponse>? secrets;

  /// Creates a new [CloudServiceOsProfileResponse].
  /// [secrets] Specifies set of certificates that should be installed onto the role instances.
  CloudServiceOsProfileResponse({
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<CloudServiceVaultSecretGroupResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
    };
  }

  factory CloudServiceOsProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceOsProfileResponse(
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<CloudServiceVaultSecretGroupResponse>(map['secrets'], (value) => CloudServiceVaultSecretGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

