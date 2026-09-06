// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointModelSkuCapacityPropertiesResponse {
  /// The default capacity.
  final pulumi.Input<int?>? default_;
  /// The maximum capacity.
  final pulumi.Input<int?>? maximum;

  /// Creates a new [EndpointModelSkuCapacityPropertiesResponse].
  /// [default_] The default capacity.
  /// [maximum] The maximum capacity.
  const EndpointModelSkuCapacityPropertiesResponse({
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
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
