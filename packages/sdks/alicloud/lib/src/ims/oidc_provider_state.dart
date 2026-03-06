// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OidcProvider resources.
class OidcProviderState {
  /// ARN of OIDC identity provider.
  final pulumi.Input<String>? arn;
  /// Client ID.
  final pulumi.Input<List<String>>? clientIds;
  /// Creation Time (UTC time).
  final pulumi.Input<String>? createTime;
  /// Description of OIDC identity provider.
  final pulumi.Input<String>? description;
  /// The authentication fingerprint of the HTTPS CA certificate.
  final pulumi.Input<List<String>>? fingerprints;
  /// The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.
  /// Unit: hours. Value range: 1~168.
  final pulumi.Input<int>? issuanceLimitTime;
  /// The issuer URL of the OIDC identity provider.
  final pulumi.Input<String>? issuerUrl;
  /// The name of the OIDC identity provider.
  final pulumi.Input<String>? oidcProviderName;

  /// Creates a new [OidcProviderState].
  /// [arn] ARN of OIDC identity provider.
  /// [clientIds] Client ID.
  /// [createTime] Creation Time (UTC time).
  /// [description] Description of OIDC identity provider.
  /// [fingerprints] The authentication fingerprint of the HTTPS CA certificate.
  /// [issuanceLimitTime] The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.
  /// [issuerUrl] The issuer URL of the OIDC identity provider.
  /// [oidcProviderName] The name of the OIDC identity provider.
  const OidcProviderState({
    this.arn,
    this.clientIds,
    this.createTime,
    this.description,
    this.fingerprints,
    this.issuanceLimitTime,
    this.issuerUrl,
    this.oidcProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clientIds': ?clientIds,
      'createTime': ?createTime,
      'description': ?description,
      'fingerprints': ?fingerprints,
      'issuanceLimitTime': ?issuanceLimitTime,
      'issuerUrl': ?issuerUrl,
      'oidcProviderName': ?oidcProviderName,
    };
  }

  factory OidcProviderState.fromMap(Map<String, dynamic> map) {
    return OidcProviderState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIds: (() { final guardedValue = map['clientIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprints: (() { final guardedValue = map['fingerprints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      issuanceLimitTime: (() { final guardedValue = map['issuanceLimitTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      issuerUrl: (() { final guardedValue = map['issuerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcProviderName: (() { final guardedValue = map['oidcProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

