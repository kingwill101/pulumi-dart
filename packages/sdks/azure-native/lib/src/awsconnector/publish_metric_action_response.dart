// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension_response.dart';

/// Definition of PublishMetricAction
class PublishMetricActionResponse {
  /// Property dimensions
  final pulumi.Input<List<DimensionResponse>>? dimensions;

  /// Creates a new [PublishMetricActionResponse].
  /// [dimensions] Property dimensions
  PublishMetricActionResponse({
    this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<DimensionResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<DimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PublishMetricActionResponse.fromMap(Map<String, dynamic> map) {
    return PublishMetricActionResponse(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DimensionResponse>(guardedValue, (value) => DimensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

