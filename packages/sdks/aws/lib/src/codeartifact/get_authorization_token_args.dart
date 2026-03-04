// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codeartifact_get_authorization_token_get_authorization_token_args_doc}
/// Arguments for getAuthorizationToken.
/// {@endtemplate}
/// {@macro pulumi_codeartifact_get_authorization_token_get_authorization_token_args_doc}
class GetAuthorizationTokenArgs {
  /// Name of the domain that is in scope for the generated authorization token.
  final pulumi.Input<String> domain;

  /// Account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;

  /// Time, in seconds, that the generated authorization token is valid. Valid values are `0` and between `900` and `43200`.
  final pulumi.Input<int>? durationSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAuthorizationTokenArgs].
  /// [domain] Name of the domain that is in scope for the generated authorization token.
  /// [domainOwner] Account number of the AWS account that owns the domain.
  /// [durationSeconds] Time, in seconds, that the generated authorization token is valid. Valid values are `0` and between `900` and `43200`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAuthorizationTokenArgs({
    required this.domain,
    this.domainOwner,
    this.durationSeconds,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'domainOwner': ?domainOwner,
      'durationSeconds': ?durationSeconds,
      'region': ?region,
    };
  }

  factory GetAuthorizationTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      domainOwner: (() {
        final guardedValue = map['domainOwner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      durationSeconds: (() {
        final guardedValue = map['durationSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
