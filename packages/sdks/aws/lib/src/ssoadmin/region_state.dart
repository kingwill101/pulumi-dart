// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_timeouts.dart';

/// Input properties used for looking up and filtering Region resources.
class RegionState {
  /// ARN of the IAM Identity Center instance.
  final pulumi.Input<String>? instanceArn;
  /// Region where Terraform calls the SSO Admin API for this resource. Defaults to the Region in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS Region to add (for example, `us-east-1`). Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? regionName;
  /// Current Region status. Valid values are `ACTIVE`, `ADDING`, and `REMOVING`.
  final pulumi.Input<String>? status;
  final pulumi.Input<RegionTimeouts>? timeouts;

  /// Creates a new [RegionState].
  /// [instanceArn] ARN of the IAM Identity Center instance.
  /// [region] Region where Terraform calls the SSO Admin API for this resource. Defaults to the Region in the provider configuration.
  /// [regionName] AWS Region to add (for example, `us-east-1`). Changing this forces a new resource.
  /// [status] Current Region status. Valid values are `ACTIVE`, `ADDING`, and `REMOVING`.
  /// [timeouts] Optional.
  const RegionState({
    this.instanceArn,
    this.region,
    this.regionName,
    this.status,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': ?instanceArn,
      'region': ?region,
      'regionName': ?regionName,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RegionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory RegionState.fromMap(Map<String, dynamic> map) {
    return RegionState(
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionName: (() { final guardedValue = map['regionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
