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
  WafDomainArgs({
    String? clientIpTag,
    required String domainName,
  }) :
      clientIpTag = pulumi.Input.asOptionalInput<String>(clientIpTag),
      domainName = pulumi.Input.asInput<String>(domainName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpTag': ?clientIpTag,
      'domainName': domainName,
    };
  }

  factory WafDomainArgs.fromMap(Map<String, dynamic> map) {
    return WafDomainArgs(
      clientIpTag: map['clientIpTag'] == null ? null : map['clientIpTag'] as String,
      domainName: map['domainName'] as String,
    );
  }
}

