// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the resource range.
class ResourceRangeResponse {
  /// The maximum number of the resource.
  final pulumi.Input<int>? max;
  /// The minimum number of the resource.
  final pulumi.Input<int>? min;

  /// Creates a new [ResourceRangeResponse].
  /// [max] The maximum number of the resource.
  /// [min] The minimum number of the resource.
  const ResourceRangeResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory ResourceRangeResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRangeResponse(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
