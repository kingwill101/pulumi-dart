// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_waf_domain_waf_domain_args_doc}
/// The set of arguments for WafDomain.
/// {@endtemplate}
/// {@macro pulumi_dcdn_waf_domain_waf_domain_args_doc}
class WafDomainArgs {
  /// The client ip tag.
  final pulumi.Input<String>? clientIpTag;

  /// The accelerated domain name.
  final pulumi.Input<String> domainName;

  /// Creates a new [WafDomainArgs].
  /// [clientIpTag] The client ip tag.
  /// [domainName] The accelerated domain name.
  WafDomainArgs({this.clientIpTag, required this.domainName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpTag': ?clientIpTag,
      'domainName': domainName,
    };
  }

  factory WafDomainArgs.fromMap(Map<String, dynamic> map) {
    return WafDomainArgs(
      clientIpTag: (() {
        final guardedValue = map['clientIpTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
    );
  }
}
