// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_access_point_get_access_point_args_doc}
/// Arguments for getAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_get_access_point_get_access_point_args_doc}
class GetAccessPointArgs {
  /// AWS account ID for the account that owns the specified access point.
  final pulumi.Input<String>? accountId;

  /// Name of the access point.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAccessPointArgs].
  /// [accountId] AWS account ID for the account that owns the specified access point.
  /// [name] Name of the access point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAccessPointArgs({
    String? accountId,
    required String name,
    String? region,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

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

  factory GetAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPointArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
