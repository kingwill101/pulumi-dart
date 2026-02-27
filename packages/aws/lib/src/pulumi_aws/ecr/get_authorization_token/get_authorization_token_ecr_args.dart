// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAuthorizationToken.
class GetAuthorizationTokenEcrArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS account ID of the ECR Repository. If not specified the default account is assumed.
  final pulumi.Input<String>? registryId;

  GetAuthorizationTokenEcrArgs({
    this.region,
    this.registryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    return map;
  }

  factory GetAuthorizationTokenEcrArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenEcrArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      registryId: pulumi.Input.asOptionalInput<String>(map['registryId']),
    );
  }
}
