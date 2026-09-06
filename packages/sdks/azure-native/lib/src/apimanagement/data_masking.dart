// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_entity.dart';

class DataMasking {
  /// Masking settings for headers
  final pulumi.Input<List<DataMaskingEntity>?>? headers;
  /// Masking settings for Url query parameters
  final pulumi.Input<List<DataMaskingEntity>?>? queryParams;

  /// Creates a new [DataMasking].
  /// [headers] Masking settings for headers
  /// [queryParams] Masking settings for Url query parameters
  const DataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<DataMaskingEntity>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<DataMaskingEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryParams': ?pulumi.Input.mapOptionalInputValue<List<DataMaskingEntity>, List<Map<String, dynamic>>>(queryParams, (value) => pulumi.Input.encodeList<DataMaskingEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataMasking.fromMap(Map<String, dynamic> map) {
    return DataMasking(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataMaskingEntity>(guardedValue, (value) => DataMaskingEntity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataMaskingEntity>(guardedValue, (value) => DataMaskingEntity.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
