// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the resource range.
class ResourceRange {
  /// The maximum number of the resource.
  final pulumi.Input<int>? max;
  /// The minimum number of the resource.
  final pulumi.Input<int>? min;

  /// Creates a new [ResourceRange].
  /// [max] The maximum number of the resource.
  /// [min] The minimum number of the resource.
  ResourceRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory ResourceRange.fromMap(Map<String, dynamic> map) {
    return ResourceRange(
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

