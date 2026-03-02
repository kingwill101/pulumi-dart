// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionRewriteConfig {
  /// The host name of the destination to which requests are redirected within ALB. The host name must be 3 to 128 characters in length, and can contain letters, digits, hyphens (-), periods (.), asterisks (*), and question marks (?). The host name must contain at least one period (.), and cannot start or end with a period (.). The rightmost domain label can contain only letters, asterisks (*) and question marks (?) and cannot contain digits or hyphens (-). Other domain labels cannot start or end with a hyphen (-). You can include asterisks (*) and question marks (?) anywhere in a domain label. Default value: ${host}. You cannot use this value with other characters at the same time.
  final pulumi.Input<String>? host;
  /// The path to which requests are to be redirected within ALB. The path must be 1 to 128 characters in length, and start with a forward slash (/). The path can contain letters, digits, asterisks (*), question marks (?)and the following special characters: $ - _ . + / & ~ @ :. It cannot contain the following special characters: " % # ; ! ( ) [ ] ^ , ”. The path is case-sensitive. Default value: ${path}. This value can be used only once. You can use it with a valid string.
  final pulumi.Input<String>? path;
  /// The query string of the request to be redirected within ALB. The query string must be 1 to 128 characters in length, can contain letters and printable characters. It cannot contain the following special characters: # [ ] { } \ | < > &. Default value: ${query}. This value can be used only once. You can use it with a valid string.
  final pulumi.Input<String>? query;

  /// Creates a new [RuleRuleActionRewriteConfig].
  /// [host] The host name of the destination to which requests are redirected within ALB. The host name must be 3 to 128 characters in length, and can contain letters, digits, hyphens (-), periods (.), asterisks (*), and question marks (?). The host name must contain at least one period (.), and cannot start or end with a period (.). The rightmost domain label can contain only letters, asterisks (*) and question marks (?) and cannot contain digits or hyphens (-). Other domain labels cannot start or end with a hyphen (-). You can include asterisks (*) and question marks (?) anywhere in a domain label. Default value: ${host}. You cannot use this value with other characters at the same time.
  /// [path] The path to which requests are to be redirected within ALB. The path must be 1 to 128 characters in length, and start with a forward slash (/). The path can contain letters, digits, asterisks (*), question marks (?)and the following special characters: $ - _ . + / & ~ @ :. It cannot contain the following special characters: " % # ; ! ( ) [ ] ^ , ”. The path is case-sensitive. Default value: ${path}. This value can be used only once. You can use it with a valid string.
  /// [query] The query string of the request to be redirected within ALB. The query string must be 1 to 128 characters in length, can contain letters and printable characters. It cannot contain the following special characters: # [ ] { } \ | < > &. Default value: ${query}. This value can be used only once. You can use it with a valid string.
  RuleRuleActionRewriteConfig({
    this.host,
    this.path,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'path': ?path,
      'query': ?query,
    };
  }

  factory RuleRuleActionRewriteConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionRewriteConfig(
      host: map['host'] == null ? null : (map['host']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
    );
  }
}

