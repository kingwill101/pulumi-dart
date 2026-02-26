// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUserPoolSigningCertificate.
class GetUserPoolSigningCertificateArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Cognito user pool ID.
  final Input<String> userPoolId;

  GetUserPoolSigningCertificateArgs({
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory GetUserPoolSigningCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetUserPoolSigningCertificateArgs(
      region: Input.asOptionalInput<String>(map['region']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
