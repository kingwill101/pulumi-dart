// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_value_matcher.dart';

/// Header configuration of the Actions set in Application Gateway.
class ApplicationGatewayHeaderConfiguration {
  /// Header name of the header configuration.
  final pulumi.Input<String>? headerName;
  /// Header value of the header configuration.
  final pulumi.Input<String>? headerValue;
  /// An optional field under "Rewrite Action". It lets you capture and modify the value(s) of a specific header when multiple headers with the same name exist. Currently supported for Set-Cookie Response header only. For more details, visit https://aka.ms/appgwheadercrud
  final pulumi.Input<HeaderValueMatcher>? headerValueMatcher;

  /// Creates a new [ApplicationGatewayHeaderConfiguration].
  /// [headerName] Header name of the header configuration.
  /// [headerValue] Header value of the header configuration.
  /// [headerValueMatcher] An optional field under "Rewrite Action". It lets you capture and modify the value(s) of a specific header when multiple headers with the same name exist. Currently supported for Set-Cookie Response header only. For more details, visit https://aka.ms/appgwheadercrud
  ApplicationGatewayHeaderConfiguration({
    this.headerName,
    this.headerValue,
    this.headerValueMatcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
      'headerValueMatcher': ?pulumi.Input.mapOptionalInputValue<HeaderValueMatcher, Map<String, dynamic>>(headerValueMatcher, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayHeaderConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayHeaderConfiguration(
      headerName: map['headerName'] == null ? null : (map['headerName']! as String).input(),
      headerValue: map['headerValue'] == null ? null : (map['headerValue']! as String).input(),
      headerValueMatcher: map['headerValueMatcher'] == null ? null : (HeaderValueMatcher.fromMap((map['headerValueMatcher']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

