// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainHttpHeaderConfig {
  final pulumi.Input<String>? headerId;
  final pulumi.Input<String> headerKey;
  final pulumi.Input<String> headerValue;

  /// Creates a new [DomainHttpHeaderConfig].
  /// [headerId] Optional.
  /// [headerKey] Required.
  /// [headerValue] Required.
  DomainHttpHeaderConfig({
    this.headerId,
    required this.headerKey,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerId': ?headerId,
      'headerKey': headerKey,
      'headerValue': headerValue,
    };
  }

  factory DomainHttpHeaderConfig.fromMap(Map<String, dynamic> map) {
    return DomainHttpHeaderConfig(
      headerId: map['headerId'] == null ? null : (map['headerId']! as String).input(),
      headerKey: (map['headerKey'] as String).input(),
      headerValue: (map['headerValue'] as String).input(),
    );
  }
}

