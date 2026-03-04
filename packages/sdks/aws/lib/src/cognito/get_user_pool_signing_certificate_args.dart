// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_user_pool_signing_certificate_get_user_pool_signing_certificate_args_doc}
/// Arguments for getUserPoolSigningCertificate.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_user_pool_signing_certificate_get_user_pool_signing_certificate_args_doc}
class GetUserPoolSigningCertificateArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Cognito user pool ID.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GetUserPoolSigningCertificateArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] Cognito user pool ID.
  GetUserPoolSigningCertificateArgs({this.region, required this.userPoolId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'userPoolId': userPoolId};
  }

  factory GetUserPoolSigningCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetUserPoolSigningCertificateArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
