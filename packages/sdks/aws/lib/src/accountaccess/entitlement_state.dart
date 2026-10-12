// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_entitlement.dart';

/// Input properties used for looking up and filtering Entitlement resources.
class EntitlementState {
  /// ARN of the parent Account Access Application. Forces replacement when changed.
  final pulumi.Input<String?>? applicationArn;
  /// Entitlement configuration. See `entitlement` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<EntitlementEntitlement?>? entitlement;
  /// Service-assigned unique identifier for this Entitlement.
  final pulumi.Input<String?>? entitlementId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [EntitlementState].
  /// [applicationArn] ARN of the parent Account Access Application. Forces replacement when changed.
  /// [entitlement] Entitlement configuration. See `entitlement` Block below.
  /// [entitlementId] Service-assigned unique identifier for this Entitlement.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const EntitlementState({
    this.applicationArn,
    this.entitlement,
    this.entitlementId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'entitlement': ?pulumi.Input.mapOptionalInputValue<EntitlementEntitlement, Map<String, dynamic>>(entitlement, (value) => value.toMap()),
      'entitlementId': ?entitlementId,
      'region': ?region,
    };
  }

  factory EntitlementState.fromMap(Map<String, dynamic> map) {
    return EntitlementState(
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entitlement: (() { final guardedValue = map['entitlement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntitlementEntitlement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entitlementId: (() { final guardedValue = map['entitlementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
