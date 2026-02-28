// ignore_for_file: unused_element, unnecessary_cast

class DistributionCustomErrorResponse {
  /// Minimum amount of time you want HTTP error codes to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated.
  final int? errorCachingMinTtl;

  /// 4xx or 5xx HTTP status code that you want to customize.
  final int errorCode;

  /// HTTP status code that you want CloudFront to return with the custom error page to the viewer.
  final int? responseCode;

  /// Path of the custom error page (for example, `/custom_404.html`).
  final String? responsePagePath;

  /// Creates a new [DistributionCustomErrorResponse].
  /// [errorCachingMinTtl] Minimum amount of time you want HTTP error codes to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated.
  /// [errorCode] 4xx or 5xx HTTP status code that you want to customize.
  /// [responseCode] HTTP status code that you want CloudFront to return with the custom error page to the viewer.
  /// [responsePagePath] Path of the custom error page (for example, `/custom_404.html`).
  DistributionCustomErrorResponse({
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

  factory DistributionCustomErrorResponse.fromMap(Map<String, dynamic> map) {
    return DistributionCustomErrorResponse(
      errorCachingMinTtl: map['errorCachingMinTtl'] == null
          ? null
          : map['errorCachingMinTtl'] as int,
      errorCode: map['errorCode'] as int,
      responseCode:
          map['responseCode'] == null ? null : map['responseCode'] as int,
      responsePagePath: map['responsePagePath'] == null
          ? null
          : map['responsePagePath'] as String,
    );
  }
}
