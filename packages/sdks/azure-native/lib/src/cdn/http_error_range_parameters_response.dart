// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The JSON object that represents the range for http status codes
class HttpErrorRangeParametersResponse {
  /// The inclusive start of the http status code range.
  final pulumi.Input<int?>? begin;
  /// The inclusive end of the http status code range.
  final pulumi.Input<int?>? end;

  /// Creates a new [HttpErrorRangeParametersResponse].
  /// [begin] The inclusive start of the http status code range.
  /// [end] The inclusive end of the http status code range.
  const HttpErrorRangeParametersResponse({
    this.begin,
    this.end,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'begin': ?begin,
      'end': ?end,
    };
  }

  factory HttpErrorRangeParametersResponse.fromMap(Map<String, dynamic> map) {
    return HttpErrorRangeParametersResponse(
      begin: (() { final guardedValue = map['begin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
