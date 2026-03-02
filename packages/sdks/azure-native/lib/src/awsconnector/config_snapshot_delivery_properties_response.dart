// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maximum_execution_frequency_enum_value_response.dart';

/// Definition of ConfigSnapshotDeliveryProperties
class ConfigSnapshotDeliveryPropertiesResponse {
  /// <p>The frequency with which Config delivers configuration snapshots.</p>
  final pulumi.Input<MaximumExecutionFrequencyEnumValueResponse>? deliveryFrequency;

  /// Creates a new [ConfigSnapshotDeliveryPropertiesResponse].
  /// [deliveryFrequency] <p>The frequency with which Config delivers configuration snapshots.</p>
  ConfigSnapshotDeliveryPropertiesResponse({
    this.deliveryFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryFrequency': ?pulumi.Input.mapOptionalInputValue<MaximumExecutionFrequencyEnumValueResponse, Map<String, dynamic>>(deliveryFrequency, (value) => value.toMap()),
    };
  }

  factory ConfigSnapshotDeliveryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigSnapshotDeliveryPropertiesResponse(
      deliveryFrequency: map['deliveryFrequency'] == null ? null : (MaximumExecutionFrequencyEnumValueResponse.fromMap((map['deliveryFrequency']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

