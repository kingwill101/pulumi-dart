// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecrpublic_get_authorization_token_get_authorization_token_args_doc}
/// Arguments for getAuthorizationToken.
/// {@endtemplate}
/// {@macro pulumi_ecrpublic_get_authorization_token_get_authorization_token_args_doc}
class GetAuthorizationTokenArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAuthorizationTokenArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAuthorizationTokenArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetAuthorizationTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

