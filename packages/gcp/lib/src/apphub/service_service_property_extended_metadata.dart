// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_property_extended_metadata_value.dart';

class ServiceServicePropertyExtendedMetadata {
  /// (Output)
  /// The key of the extended metadata.
  final String? key;

  /// (Output)
  /// The value of the extended metadata.
  /// Structure is documented below.
  final List<ServiceServicePropertyExtendedMetadataValue>? values;

  /// Creates a new [ServiceServicePropertyExtendedMetadata].
  /// [key] (Output)
  /// [values] (Output)
  ServiceServicePropertyExtendedMetadata({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = pulumi.Input.encodeList<
          ServiceServicePropertyExtendedMetadataValue,
          Map<String, dynamic>>(valuesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceServicePropertyExtendedMetadata.fromMap(
      Map<String, dynamic> map) {
    return ServiceServicePropertyExtendedMetadata(
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServiceServicePropertyExtendedMetadataValue>(
              map['values'],
              (value) => ServiceServicePropertyExtendedMetadataValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
