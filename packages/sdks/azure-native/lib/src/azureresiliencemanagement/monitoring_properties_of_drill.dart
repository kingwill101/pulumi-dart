// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_identity.dart';

/// Drill monitoring properties.
class MonitoringPropertiesOfDrill {
  /// Identity to use for Drill monitoring operations.
  final pulumi.Input<AssociatedIdentity?>? identity;

  /// Creates a new [MonitoringPropertiesOfDrill].
  /// [identity] Identity to use for Drill monitoring operations.
  const MonitoringPropertiesOfDrill({
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<AssociatedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory MonitoringPropertiesOfDrill.fromMap(Map<String, dynamic> map) {
    return MonitoringPropertiesOfDrill(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssociatedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
