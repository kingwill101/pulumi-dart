// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OriginCustomHeader
class OriginCustomHeaderResponse {
  /// The name of a header that you want CloudFront to send to your origin. For more information, see [Adding Custom Headers to Origin Requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html) in the *Amazon CloudFront Developer Guide*.
  final String? headerName;
  /// The value for the header that you specified in the ``HeaderName`` field.
  final String? headerValue;

  /// Creates a new [OriginCustomHeaderResponse].
  /// [headerName] The name of a header that you want CloudFront to send to your origin. For more information, see [Adding Custom Headers to Origin Requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html) in the *Amazon CloudFront Developer Guide*.
  /// [headerValue] The value for the header that you specified in the ``HeaderName`` field.
  OriginCustomHeaderResponse({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory OriginCustomHeaderResponse.fromMap(Map<String, dynamic> map) {
    return OriginCustomHeaderResponse(
      headerName: map['headerName'] == null ? null : map['headerName'] as String,
      headerValue: map['headerValue'] == null ? null : map['headerValue'] as String,
    );
  }
}

