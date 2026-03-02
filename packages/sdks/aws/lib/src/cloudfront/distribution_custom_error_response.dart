// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionCustomErrorResponse {
  /// Minimum amount of time you want HTTP error codes to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated.
  final pulumi.Input<int>? errorCachingMinTtl;
  /// 4xx or 5xx HTTP status code that you want to customize.
  final pulumi.Input<int> errorCode;
  /// HTTP status code that you want CloudFront to return with the custom error page to the viewer.
  final pulumi.Input<int>? responseCode;
  /// Path of the custom error page (for example, `/custom_404.html`).
  final pulumi.Input<String>? responsePagePath;

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
    return <String, dynamic>{
      'errorCachingMinTtl': ?errorCachingMinTtl,
      'errorCode': errorCode,
      'responseCode': ?responseCode,
      'responsePagePath': ?responsePagePath,
    };
  }

  factory DistributionCustomErrorResponse.fromMap(Map<String, dynamic> map) {
    return DistributionCustomErrorResponse(
      errorCachingMinTtl: map['errorCachingMinTtl'] == null ? null : (map['errorCachingMinTtl'] as int).input(),
      errorCode: (map['errorCode'] as int).input(),
      responseCode: map['responseCode'] == null ? null : (map['responseCode'] as int).input(),
      responsePagePath: map['responsePagePath'] == null ? null : (map['responsePagePath'] as String).input(),
    );
  }
}

