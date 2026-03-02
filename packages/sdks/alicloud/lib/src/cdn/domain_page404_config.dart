// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainPage404Config {
  final pulumi.Input<String>? customPageUrl;
  final pulumi.Input<String>? errorCode;
  final pulumi.Input<String>? pageType;

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
      customPageUrl: map['customPageUrl'] == null ? null : (map['customPageUrl'] as String).input(),
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as String).input(),
      pageType: map['pageType'] == null ? null : (map['pageType'] as String).input(),
    );
  }
}

