// ignore_for_file: unused_element, unnecessary_cast


/// Describes the resource range.
class ResourceRangeResponse {
  /// The maximum number of the resource.
  final int? max;
  /// The minimum number of the resource.
  final int? min;

  /// Creates a new [ResourceRangeResponse].
  /// [max] The maximum number of the resource.
  /// [min] The minimum number of the resource.
  ResourceRangeResponse({
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
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

