// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAuthorizer.
class GetAuthorizerArgs {
  /// Authorizer identifier.
  final Input<String> authorizerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the associated REST API.
  final Input<String> restApiId;

  GetAuthorizerArgs({
    required this.authorizerId,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizerId'] = authorizerId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    return map;
  }

  factory GetAuthorizerArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizerArgs(
      authorizerId: Input.asInput<String>(map['authorizerId']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
    );
  }
}
