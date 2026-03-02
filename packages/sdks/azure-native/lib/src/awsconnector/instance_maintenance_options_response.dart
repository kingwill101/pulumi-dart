// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_auto_recovery_state_enum_value_response.dart';

/// Definition of InstanceMaintenanceOptions
class InstanceMaintenanceOptionsResponse {
  /// <p>Provides information on the current automatic recovery behavior of your instance.</p>
  final pulumi.Input<InstanceAutoRecoveryStateEnumValueResponse>? autoRecovery;

  /// Creates a new [InstanceMaintenanceOptionsResponse].
  /// [autoRecovery] <p>Provides information on the current automatic recovery behavior of your instance.</p>
  InstanceMaintenanceOptionsResponse({
    this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': ?pulumi.Input.mapOptionalInputValue<InstanceAutoRecoveryStateEnumValueResponse, Map<String, dynamic>>(autoRecovery, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenanceOptionsResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceOptionsResponse(
      autoRecovery: map['autoRecovery'] == null ? null : (InstanceAutoRecoveryStateEnumValueResponse.fromMap((map['autoRecovery'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

