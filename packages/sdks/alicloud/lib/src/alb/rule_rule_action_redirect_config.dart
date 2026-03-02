// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionRedirectConfig {
  /// The host name of the destination to which requests are redirected within ALB. The host name must be 3 to 128 characters in length, and can contain letters, digits, hyphens (-), periods (.), asterisks (*), and question marks (?). The host name must contain at least one period (.), and cannot start or end with a period (.). The rightmost domain label can contain only letters, asterisks (*) and question marks (?) and cannot contain digits or hyphens (-). Other domain labels cannot start or end with a hyphen (-). You can include asterisks (*) and question marks (?) anywhere in a domain label. Default value: ${host}. You cannot use this value with other characters at the same time.
  final pulumi.Input<String>? host;
  /// The redirect method. Valid values: `301`, `302`, `303`, `307`, and `308`.
  final pulumi.Input<String>? httpCode;
  /// The path to which requests are to be redirected within ALB. The path must be 1 to 128 characters in length, and start with a forward slash (/). The path can contain letters, digits, asterisks (*), question marks (?)and the following special characters: $ - _ . + / & ~ @ :. It cannot contain the following special characters: " % # ; ! ( ) [ ] ^ , ”. The path is case-sensitive. Default value: ${path}. This value can be used only once. You can use it with a valid string.
  final pulumi.Input<String>? path;
  /// The port of the destination to which requests are redirected. Valid values: `1` to `63335`. Default value: ${port}. You cannot use this value together with other characters at the same time.
  final pulumi.Input<String>? port;
  /// The protocol of the requests to be redirected. Valid values: `HTTP` and `HTTPS`. Default value: `${protocol}`. You cannot use this value together with other characters at the same time. Note HTTPS listeners can redirect only HTTPS requests.
  final pulumi.Input<String>? protocol;
  /// The query string of the request to be redirected within ALB. The query string must be 1 to 128 characters in length, can contain letters and printable characters. It cannot contain the following special characters: # [ ] { } \ | < > &. Default value: ${query}. This value can be used only once. You can use it with a valid string.
  final pulumi.Input<String>? query;

  /// Creates a new [RuleRuleActionRedirectConfig].
  /// [host] The host name of the destination to which requests are redirected within ALB. The host name must be 3 to 128 characters in length, and can contain letters, digits, hyphens (-), periods (.), asterisks (*), and question marks (?). The host name must contain at least one period (.), and cannot start or end with a period (.). The rightmost domain label can contain only letters, asterisks (*) and question marks (?) and cannot contain digits or hyphens (-). Other domain labels cannot start or end with a hyphen (-). You can include asterisks (*) and question marks (?) anywhere in a domain label. Default value: ${host}. You cannot use this value with other characters at the same time.
  /// [httpCode] The redirect method. Valid values: `301`, `302`, `303`, `307`, and `308`.
  /// [path] The path to which requests are to be redirected within ALB. The path must be 1 to 128 characters in length, and start with a forward slash (/). The path can contain letters, digits, asterisks (*), question marks (?)and the following special characters: $ - _ . + / & ~ @ :. It cannot contain the following special characters: " % # ; ! ( ) [ ] ^ , ”. The path is case-sensitive. Default value: ${path}. This value can be used only once. You can use it with a valid string.
  /// [port] The port of the destination to which requests are redirected. Valid values: `1` to `63335`. Default value: ${port}. You cannot use this value together with other characters at the same time.
  /// [protocol] The protocol of the requests to be redirected. Valid values: `HTTP` and `HTTPS`. Default value: `${protocol}`. You cannot use this value together with other characters at the same time. Note HTTPS listeners can redirect only HTTPS requests.
  /// [query] The query string of the request to be redirected within ALB. The query string must be 1 to 128 characters in length, can contain letters and printable characters. It cannot contain the following special characters: # [ ] { } \ | < > &. Default value: ${query}. This value can be used only once. You can use it with a valid string.
  RuleRuleActionRedirectConfig({
    this.host,
    this.httpCode,
    this.path,
    this.port,
    this.protocol,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'httpCode': ?httpCode,
      'path': ?path,
      'port': ?port,
      'protocol': ?protocol,
      'query': ?query,
    };
  }

  factory RuleRuleActionRedirectConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionRedirectConfig(
      host: map['host'] == null ? null : (map['host']! as String).input(),
      httpCode: map['httpCode'] == null ? null : (map['httpCode']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
    );
  }
}

