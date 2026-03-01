// ignore_for_file: unused_element, unnecessary_cast


/// The JSON object that represents the range for http status codes
class HttpErrorRangeParametersResponse {
  /// The inclusive start of the http status code range.
  final int? begin;
  /// The inclusive end of the http status code range.
  final int? end;

  /// Creates a new [HttpErrorRangeParametersResponse].
  /// [begin] The inclusive start of the http status code range.
  /// [end] The inclusive end of the http status code range.
  HttpErrorRangeParametersResponse({
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
      begin: map['begin'] == null ? null : map['begin'] as int,
      end: map['end'] == null ? null : map['end'] as int,
    );
  }
}

