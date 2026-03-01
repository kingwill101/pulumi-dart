// ignore_for_file: unused_element, unnecessary_cast

import 'maximum_execution_frequency_enum_value_response.dart';

/// Definition of ConfigSnapshotDeliveryProperties
class ConfigSnapshotDeliveryPropertiesResponse {
  /// <p>The frequency with which Config delivers configuration snapshots.</p>
  final MaximumExecutionFrequencyEnumValueResponse? deliveryFrequency;

  /// Creates a new [ConfigSnapshotDeliveryPropertiesResponse].
  /// [deliveryFrequency] <p>The frequency with which Config delivers configuration snapshots.</p>
  ConfigSnapshotDeliveryPropertiesResponse({
    this.deliveryFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryFrequency': ?deliveryFrequency == null ? null : deliveryFrequency!.toMap(),
    };
  }

  factory ConfigSnapshotDeliveryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfigSnapshotDeliveryPropertiesResponse(
      deliveryFrequency: map['deliveryFrequency'] == null ? null : MaximumExecutionFrequencyEnumValueResponse.fromMap((map['deliveryFrequency'] as Map).cast<String, dynamic>()),
    );
  }
}

