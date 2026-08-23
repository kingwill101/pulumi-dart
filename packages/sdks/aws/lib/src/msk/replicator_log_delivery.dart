// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_log_delivery_replicator_log_delivery.dart';

class ReplicatorLogDelivery {
  /// Configuration block for replicator log delivery. Detailed below.
  final pulumi.Input<ReplicatorLogDeliveryReplicatorLogDelivery>? replicatorLogDelivery;

  /// Creates a new [ReplicatorLogDelivery].
  /// [replicatorLogDelivery] Configuration block for replicator log delivery. Detailed below.
  const ReplicatorLogDelivery({
    this.replicatorLogDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicatorLogDelivery': ?pulumi.Input.mapOptionalInputValue<ReplicatorLogDeliveryReplicatorLogDelivery, Map<String, dynamic>>(replicatorLogDelivery, (value) => value.toMap()),
    };
  }

  factory ReplicatorLogDelivery.fromMap(Map<String, dynamic> map) {
    return ReplicatorLogDelivery(
      replicatorLogDelivery: (() { final guardedValue = map['replicatorLogDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorLogDeliveryReplicatorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
