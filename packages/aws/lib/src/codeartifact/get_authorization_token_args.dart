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
    required String domain,
    String? domainOwner,
    int? durationSeconds,
    String? region,
  }) :
      domain = pulumi.Input.asInput<String>(domain),
      domainOwner = pulumi.Input.asOptionalInput<String>(domainOwner),
      durationSeconds = pulumi.Input.asOptionalInput<int>(durationSeconds),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      domain: map['domain'] as String,
      domainOwner: map['domainOwner'] == null ? null : map['domainOwner'] as String,
      durationSeconds: map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

