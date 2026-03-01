// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension_response.dart';

/// Definition of PublishMetricAction
class PublishMetricActionResponse {
  /// Property dimensions
  final List<DimensionResponse>? dimensions;

  /// Creates a new [PublishMetricActionResponse].
  /// [dimensions] Property dimensions
  PublishMetricActionResponse({
    this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<DimensionResponse, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
    };
  }

  factory PublishMetricActionResponse.fromMap(Map<String, dynamic> map) {
    return PublishMetricActionResponse(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<DimensionResponse>(map['dimensions'], (value) => DimensionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

