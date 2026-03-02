// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_secret_group.dart';

/// Describes the OS profile for the cloud service.
class CloudServiceOsProfile {
  /// Specifies set of certificates that should be installed onto the role instances.
  final pulumi.Input<List<CloudServiceVaultSecretGroup>>? secrets;

  /// Creates a new [CloudServiceOsProfile].
  /// [secrets] Specifies set of certificates that should be installed onto the role instances.
  CloudServiceOsProfile({
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<CloudServiceVaultSecretGroup>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<CloudServiceVaultSecretGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloudServiceOsProfile.fromMap(Map<String, dynamic> map) {
    return CloudServiceOsProfile(
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<CloudServiceVaultSecretGroup>(map['secrets'], (value) => CloudServiceVaultSecretGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

