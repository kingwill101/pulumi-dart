// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionCustomErrorResponse {
  /// Minimum amount of time that you want CloudFront to cache the HTTP status code specified in ErrorCode.
  final int? errorCachingMinTtl;

  /// HTTP status code for which you want to specify a custom error page and/or a caching duration.
  final int errorCode;

  /// HTTP status code that you want CloudFront to return to the viewer along with the custom error page. Both `response_code` and `response_page_path` must be specified or both must be omitted.
  final String? responseCode;

  /// Path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by ErrorCode. Both `response_code` and `response_page_path` must be specified or both must be omitted.
  final String? responsePagePath;

  MultitenantDistributionCustomErrorResponse({
    this.errorCachingMinTtl,
    required this.errorCode,
    this.responseCode,
    this.responsePagePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorCachingMinTtlValue = errorCachingMinTtl;
    if (errorCachingMinTtlValue != null) {
      map['errorCachingMinTtl'] = errorCachingMinTtlValue;
    }
    map['errorCode'] = errorCode;
    final responseCodeValue = responseCode;
    if (responseCodeValue != null) {
      map['responseCode'] = responseCodeValue;
    }
    final responsePagePathValue = responsePagePath;
    if (responsePagePathValue != null) {
      map['responsePagePath'] = responsePagePathValue;
    }
    return map;
  }

  factory MultitenantDistributionCustomErrorResponse.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionCustomErrorResponse(
      errorCachingMinTtl: map['errorCachingMinTtl'] == null
          ? null
          : map['errorCachingMinTtl'] as int,
      errorCode: map['errorCode'] as int,
      responseCode:
          map['responseCode'] == null ? null : map['responseCode'] as String,
      responsePagePath: map['responsePagePath'] == null
          ? null
          : map['responsePagePath'] as String,
    );
  }
}
