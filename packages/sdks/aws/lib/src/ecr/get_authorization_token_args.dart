// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_authorization_token_get_authorization_token_args_doc}
/// Arguments for getAuthorizationToken.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_authorization_token_get_authorization_token_args_doc}
class GetAuthorizationTokenArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS account ID of the ECR Repository. If not specified the default account is assumed.
  final pulumi.Input<String>? registryId;

  /// Creates a new [GetAuthorizationTokenArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] AWS account ID of the ECR Repository. If not specified the default account is assumed.
  const GetAuthorizationTokenArgs({
    this.region,
    this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'registryId': ?registryId,
    };
  }

  factory GetAuthorizationTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
