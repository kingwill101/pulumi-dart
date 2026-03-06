// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maximum_execution_frequency_enum_value_response.dart';

/// Definition of ConfigSnapshotDeliveryProperties
class ConfigSnapshotDeliveryPropertiesResponse {
  /// &lt;p&gt;The frequency with which Config delivers configuration snapshots.&lt;/p&gt;
  final pulumi.Input<MaximumExecutionFrequencyEnumValueResponse>? deliveryFrequency;

  /// Creates a new [ConfigSnapshotDeliveryPropertiesResponse].
  /// [deliveryFrequency] &lt;p&gt;The frequency with which Config delivers configuration snapshots.&lt;/p&gt;
  const ConfigSnapshotDeliveryPropertiesResponse({
    this.deliveryFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryFrequency': ?pulumi.Input.mapOptionalInputValue<MaximumExecutionFrequencyEnumValueResponse, Map<String, dynamic>>(deliveryFrequency, (value) => value.toMap()),
    };
  }

  factory ConfigSnapshotDeliveryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigSnapshotDeliveryPropertiesResponse(
      deliveryFrequency: (() { final guardedValue = map['deliveryFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaximumExecutionFrequencyEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

