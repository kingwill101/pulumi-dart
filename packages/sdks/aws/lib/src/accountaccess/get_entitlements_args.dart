// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_filter.dart';

/// {@template pulumi_accountaccess_get_entitlements_get_entitlements_args_doc}
/// Arguments for getEntitlements.
/// {@endtemplate}
/// {@macro pulumi_accountaccess_get_entitlements_get_entitlements_args_doc}
class GetEntitlementsArgs {
  /// ARN of the parent Application to list Entitlements within.
  final pulumi.Input<String> applicationArn;
  /// Filter criteria to narrow the entitlements returned. You can filter by principal, IAM role, or account. See `filter` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<GetEntitlementsFilter> filter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetEntitlementsArgs].
  /// [applicationArn] ARN of the parent Application to list Entitlements within.
  /// [filter] Filter criteria to narrow the entitlements returned. You can filter by principal, IAM role, or account. See `filter` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetEntitlementsArgs({
    required this.applicationArn,
    required this.filter,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'filter': pulumi.Input.mapInputValue<GetEntitlementsFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory GetEntitlementsArgs.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsArgs(
      applicationArn: pulumi.Input.fromValue(map['applicationArn'] as String),
      filter: pulumi.Input.fromValue(GetEntitlementsFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
