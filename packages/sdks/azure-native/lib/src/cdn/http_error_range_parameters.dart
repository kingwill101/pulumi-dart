// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The JSON object that represents the range for http status codes
class HttpErrorRangeParameters {
  /// The inclusive start of the http status code range.
  final pulumi.Input<int>? begin;

  /// The inclusive end of the http status code range.
  final pulumi.Input<int>? end;

  /// Creates a new [HttpErrorRangeParameters].
  /// [begin] The inclusive start of the http status code range.
  /// [end] The inclusive end of the http status code range.
  HttpErrorRangeParameters({this.begin, this.end});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'begin': ?begin, 'end': ?end};
  }

  factory HttpErrorRangeParameters.fromMap(Map<String, dynamic> map) {
    return HttpErrorRangeParameters(
      begin: (() {
        final guardedValue = map['begin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      end: (() {
        final guardedValue = map['end'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
