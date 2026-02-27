// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessPoint.
class GetAccessPointS3Args {
  /// AWS account ID for the account that owns the specified access point.
  final pulumi.Input<String>? accountId;

  /// Name of the access point.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetAccessPointS3Args({
    this.accountId,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAccessPointS3Args.fromMap(Map<String, dynamic> map) {
    return GetAccessPointS3Args(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
