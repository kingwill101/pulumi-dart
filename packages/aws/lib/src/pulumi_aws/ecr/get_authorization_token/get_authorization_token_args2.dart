// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAuthorizationToken.
class GetAuthorizationTokenArgs2 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// AWS account ID of the ECR Repository. If not specified the default account is assumed.
  final Input<String>? registryId;

  GetAuthorizationTokenArgs2({
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

  factory GetAuthorizationTokenArgs2.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationTokenArgs2(
      region: Input.asOptionalInput<String>(map['region']),
      registryId: Input.asOptionalInput<String>(map['registryId']),
    );
  }
}
