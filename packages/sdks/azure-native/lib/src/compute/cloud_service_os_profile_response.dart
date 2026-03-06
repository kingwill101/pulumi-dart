// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_secret_group_response.dart';

/// Describes the OS profile for the cloud service.
class CloudServiceOsProfileResponse {
  /// Specifies set of certificates that should be installed onto the role instances.
  final pulumi.Input<List<CloudServiceVaultSecretGroupResponse>>? secrets;

  /// Creates a new [CloudServiceOsProfileResponse].
  /// [secrets] Specifies set of certificates that should be installed onto the role instances.
  const CloudServiceOsProfileResponse({
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<CloudServiceVaultSecretGroupResponse>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<CloudServiceVaultSecretGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloudServiceOsProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceOsProfileResponse(
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudServiceVaultSecretGroupResponse>(guardedValue, (value) => CloudServiceVaultSecretGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

