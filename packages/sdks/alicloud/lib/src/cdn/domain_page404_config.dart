// ignore_for_file: unused_element, unnecessary_cast


class DomainPage404Config {
  final String? customPageUrl;
  final String? errorCode;
  final String? pageType;

  /// Creates a new [DomainPage404Config].
  /// [customPageUrl] Optional.
  /// [errorCode] Optional.
  /// [pageType] Optional.
  DomainPage404Config({
    this.customPageUrl,
    this.errorCode,
    this.pageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPageUrl': ?customPageUrl,
      'errorCode': ?errorCode,
      'pageType': ?pageType,
    };
  }

  factory DomainPage404Config.fromMap(Map<String, dynamic> map) {
    return DomainPage404Config(
      customPageUrl: map['customPageUrl'] == null ? null : map['customPageUrl'] as String,
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      pageType: map['pageType'] == null ? null : map['pageType'] as String,
    );
  }
}

