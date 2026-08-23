// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_auto_recovery_state_enum_value_response.dart';

/// Definition of InstanceMaintenanceOptions
class InstanceMaintenanceOptionsResponse {
  /// &lt;p&gt;Provides information on the current automatic recovery behavior of your instance.&lt;/p&gt;
  final pulumi.Input<InstanceAutoRecoveryStateEnumValueResponse>? autoRecovery;

  /// Creates a new [InstanceMaintenanceOptionsResponse].
  /// [autoRecovery] &lt;p&gt;Provides information on the current automatic recovery behavior of your instance.&lt;/p&gt;
  const InstanceMaintenanceOptionsResponse({
    this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': ?pulumi.Input.mapOptionalInputValue<InstanceAutoRecoveryStateEnumValueResponse, Map<String, dynamic>>(autoRecovery, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenanceOptionsResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceOptionsResponse(
      autoRecovery: (() { final guardedValue = map['autoRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutoRecoveryStateEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
