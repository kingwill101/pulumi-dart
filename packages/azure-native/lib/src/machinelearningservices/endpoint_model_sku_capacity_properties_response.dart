// ignore_for_file: unused_element, unnecessary_cast


class EndpointModelSkuCapacityPropertiesResponse {
  /// The default capacity.
  final int? default_;
  /// The maximum capacity.
  final int? maximum;

  /// Creates a new [EndpointModelSkuCapacityPropertiesResponse].
  /// [default_] The default capacity.
  /// [maximum] The maximum capacity.
  EndpointModelSkuCapacityPropertiesResponse({
    this.default_,
    this.maximum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'maximum': ?maximum,
    };
  }

  factory EndpointModelSkuCapacityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelSkuCapacityPropertiesResponse(
      default_: map['default'] == null ? null : map['default'] as int,
      maximum: map['maximum'] == null ? null : map['maximum'] as int,
    );
  }
}

