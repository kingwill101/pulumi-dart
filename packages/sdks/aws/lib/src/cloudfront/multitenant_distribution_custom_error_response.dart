// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionCustomErrorResponse {
  /// Minimum amount of time that you want CloudFront to cache the HTTP status code specified in ErrorCode.
  final pulumi.Input<int>? errorCachingMinTtl;
  /// HTTP status code for which you want to specify a custom error page and/or a caching duration.
  final pulumi.Input<int> errorCode;
  /// HTTP status code that you want CloudFront to return to the viewer along with the custom error page. Both `response_code` and `response_page_path` must be specified or both must be omitted.
  final pulumi.Input<String>? responseCode;
  /// Path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by ErrorCode. Both `response_code` and `response_page_path` must be specified or both must be omitted.
  final pulumi.Input<String>? responsePagePath;

  /// Creates a new [MultitenantDistributionCustomErrorResponse].
  /// [errorCachingMinTtl] Minimum amount of time that you want CloudFront to cache the HTTP status code specified in ErrorCode.
  /// [errorCode] HTTP status code for which you want to specify a custom error page and/or a caching duration.
  /// [responseCode] HTTP status code that you want CloudFront to return to the viewer along with the custom error page. Both `response_code` and `response_page_path` must be specified or both must be omitted.
  /// [responsePagePath] Path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by ErrorCode. Both `response_code` and `response_page_path` must be specified or both must be omitted.
  MultitenantDistributionCustomErrorResponse({
    this.errorCachingMinTtl,
    required this.errorCode,
    this.responseCode,
    this.responsePagePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCachingMinTtl': ?errorCachingMinTtl,
      'errorCode': errorCode,
      'responseCode': ?responseCode,
      'responsePagePath': ?responsePagePath,
    };
  }

  factory MultitenantDistributionCustomErrorResponse.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionCustomErrorResponse(
      errorCachingMinTtl: map['errorCachingMinTtl'] == null ? null : ((map['errorCachingMinTtl'] as int).input()).input(),
      errorCode: (map['errorCode'] as int).input(),
      responseCode: map['responseCode'] == null ? null : ((map['responseCode'] as String).input()).input(),
      responsePagePath: map['responsePagePath'] == null ? null : ((map['responsePagePath'] as String).input()).input(),
    );
  }
}

