// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FargateCredentialSpecConfig {
  /// ARN of the Secrets Manager secret containing `username`, `password`, and `domainName` for an
  /// Active Directory user allowed to retrieve the gMSA password. The secret remains user-managed;
  /// only its metadata is read to discover the encryption key.
  final pulumi.Input<String> credentialsSecretArn;
  /// DNS name of the Active Directory forest root.
  ///
  /// Default - `domainName`.
  final pulumi.Input<String?>? dnsTreeName;
  /// GUID of the Active Directory domain.
  final pulumi.Input<String> domainGuid;
  /// DNS name of the Active Directory domain, for example `example.com`.
  final pulumi.Input<String> domainName;
  /// Security identifier (SID) of the Active Directory domain.
  final pulumi.Input<String> domainSid;
  /// Name of the gMSA account, for example `WebApp01`.
  final pulumi.Input<String> gmsaAccountName;
  /// NetBIOS name of the Active Directory domain, for example `EXAMPLE`.
  final pulumi.Input<String> netBiosName;

  /// Creates a new [FargateCredentialSpecConfig].
  /// [credentialsSecretArn] ARN of the Secrets Manager secret containing `username`, `password`, and `domainName` for an
  /// [dnsTreeName] DNS name of the Active Directory forest root.
  /// [domainGuid] GUID of the Active Directory domain.
  /// [domainName] DNS name of the Active Directory domain, for example `example.com`.
  /// [domainSid] Security identifier (SID) of the Active Directory domain.
  /// [gmsaAccountName] Name of the gMSA account, for example `WebApp01`.
  /// [netBiosName] NetBIOS name of the Active Directory domain, for example `EXAMPLE`.
  const FargateCredentialSpecConfig({
    required this.credentialsSecretArn,
    this.dnsTreeName,
    required this.domainGuid,
    required this.domainName,
    required this.domainSid,
    required this.gmsaAccountName,
    required this.netBiosName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsSecretArn': credentialsSecretArn,
      'dnsTreeName': ?dnsTreeName,
      'domainGuid': domainGuid,
      'domainName': domainName,
      'domainSid': domainSid,
      'gmsaAccountName': gmsaAccountName,
      'netBiosName': netBiosName,
    };
  }

  factory FargateCredentialSpecConfig.fromMap(Map<String, dynamic> map) {
    return FargateCredentialSpecConfig(
      credentialsSecretArn: pulumi.Input.fromValue(map['credentialsSecretArn'] as String),
      dnsTreeName: (() { final guardedValue = map['dnsTreeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainGuid: pulumi.Input.fromValue(map['domainGuid'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainSid: pulumi.Input.fromValue(map['domainSid'] as String),
      gmsaAccountName: pulumi.Input.fromValue(map['gmsaAccountName'] as String),
      netBiosName: pulumi.Input.fromValue(map['netBiosName'] as String),
    );
  }
}
