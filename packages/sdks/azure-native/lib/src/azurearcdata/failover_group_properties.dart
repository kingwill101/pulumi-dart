// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_spec.dart';

/// The properties of a failover group resource.
class FailoverGroupProperties {
  /// The resource ID of the partner SQL managed instance.
  final pulumi.Input<String> partnerManagedInstanceId;
  /// The specifications of the failover group resource.
  final pulumi.Input<FailoverGroupSpec> spec;
  /// The status of the failover group custom resource.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [FailoverGroupProperties].
  /// [partnerManagedInstanceId] The resource ID of the partner SQL managed instance.
  /// [spec] The specifications of the failover group resource.
  /// [status] The status of the failover group custom resource.
  const FailoverGroupProperties({
    required this.partnerManagedInstanceId,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerManagedInstanceId': partnerManagedInstanceId,
      'spec': pulumi.Input.mapInputValue<FailoverGroupSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory FailoverGroupProperties.fromMap(Map<String, dynamic> map) {
    return FailoverGroupProperties(
      partnerManagedInstanceId: pulumi.Input.fromValue(map['partnerManagedInstanceId'] as String),
      spec: pulumi.Input.fromValue(FailoverGroupSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
