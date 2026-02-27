// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthorizer.
class GetAuthorizerArgs {
  /// Authorizer identifier.
  final pulumi.Input<String> authorizerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the associated REST API.
  final pulumi.Input<String> restApiId;

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
      authorizerId: pulumi.Input.asInput<String>(map['authorizerId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApiId: pulumi.Input.asInput<String>(map['restApiId']),
    );
  }
}
