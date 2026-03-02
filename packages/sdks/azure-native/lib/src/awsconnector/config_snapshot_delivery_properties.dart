// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maximum_execution_frequency_enum_value.dart';

/// Definition of ConfigSnapshotDeliveryProperties
class ConfigSnapshotDeliveryProperties {
  /// <p>The frequency with which Config delivers configuration snapshots.</p>
  final pulumi.Input<MaximumExecutionFrequencyEnumValue>? deliveryFrequency;

  /// Creates a new [ConfigSnapshotDeliveryProperties].
  /// [deliveryFrequency] <p>The frequency with which Config delivers configuration snapshots.</p>
  ConfigSnapshotDeliveryProperties({
    this.deliveryFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryFrequency': ?pulumi.Input.mapOptionalInputValue<MaximumExecutionFrequencyEnumValue, Map<String, dynamic>>(deliveryFrequency, (value) => value.toMap()),
    };
  }

  factory ConfigSnapshotDeliveryProperties.fromMap(Map<String, dynamic> map) {
    return ConfigSnapshotDeliveryProperties(
      deliveryFrequency: map['deliveryFrequency'] == null ? null : (MaximumExecutionFrequencyEnumValue.fromMap((map['deliveryFrequency'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

