// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_static_site_custom_domain_static_site_custom_domain_args_doc}
/// The set of arguments for StaticSiteCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appservice_static_site_custom_domain_static_site_custom_domain_args_doc}
class StaticSiteCustomDomainArgs {
  /// The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String> domainName;
  /// The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String> staticSiteId;
  /// One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  final pulumi.Input<String>? validationType;

  /// Creates a new [StaticSiteCustomDomainArgs].
  /// [domainName] The Domain Name which should be associated with this Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [staticSiteId] The ID of the Static Site. Changing this forces a new Static Site Custom Domain to be created.
  /// [validationType] One of `cname-delegation` or `dns-txt-token`. Changing this forces a new Static Site Custom Domain to be created.
  StaticSiteCustomDomainArgs({
    required String domainName,
    required String staticSiteId,
    String? validationType,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      staticSiteId = pulumi.Input.asInput<String>(staticSiteId),
      validationType = pulumi.Input.asOptionalInput<String>(validationType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'staticSiteId': staticSiteId,
      'validationType': ?validationType,
    };
  }

  factory StaticSiteCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteCustomDomainArgs(
      domainName: map['domainName'] as String,
      staticSiteId: map['staticSiteId'] as String,
      validationType: map['validationType'] == null ? null : map['validationType'] as String,
    );
  }
}

