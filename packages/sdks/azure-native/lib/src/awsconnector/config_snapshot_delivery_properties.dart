// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maximum_execution_frequency_enum_value.dart';

/// Definition of ConfigSnapshotDeliveryProperties
class ConfigSnapshotDeliveryProperties {
  /// &lt;p&gt;The frequency with which Config delivers configuration snapshots.&lt;/p&gt;
  final pulumi.Input<MaximumExecutionFrequencyEnumValue?>? deliveryFrequency;

  /// Creates a new [ConfigSnapshotDeliveryProperties].
  /// [deliveryFrequency] &lt;p&gt;The frequency with which Config delivers configuration snapshots.&lt;/p&gt;
  const ConfigSnapshotDeliveryProperties({
    this.deliveryFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryFrequency': ?pulumi.Input.mapOptionalInputValue<MaximumExecutionFrequencyEnumValue, Map<String, dynamic>>(deliveryFrequency, (value) => value.toMap()),
    };
  }

  factory ConfigSnapshotDeliveryProperties.fromMap(Map<String, dynamic> map) {
    return ConfigSnapshotDeliveryProperties(
      deliveryFrequency: (() { final guardedValue = map['deliveryFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaximumExecutionFrequencyEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
