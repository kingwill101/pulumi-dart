// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_timeouts.dart';

/// {@template pulumi_ssoadmin_region_region_args_doc}
/// The set of arguments for Region.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_region_region_args_doc}
class RegionArgs {
  /// ARN of the IAM Identity Center instance.
  final pulumi.Input<String> instanceArn;
  /// Region where Terraform calls the SSO Admin API for this resource. Defaults to the Region in the provider configuration.
  final pulumi.Input<String?>? region;
  /// AWS Region to add (for example, `us-east-1`). Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> regionName;
  final pulumi.Input<RegionTimeouts?>? timeouts;

  /// Creates a new [RegionArgs].
  /// [instanceArn] ARN of the IAM Identity Center instance.
  /// [region] Region where Terraform calls the SSO Admin API for this resource. Defaults to the Region in the provider configuration.
  /// [regionName] AWS Region to add (for example, `us-east-1`). Changing this forces a new resource.
  /// [timeouts] Optional.
  const RegionArgs({
    required this.instanceArn,
    this.region,
    required this.regionName,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': instanceArn,
      'region': ?region,
      'regionName': regionName,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RegionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory RegionArgs.fromMap(Map<String, dynamic> map) {
    return RegionArgs(
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
