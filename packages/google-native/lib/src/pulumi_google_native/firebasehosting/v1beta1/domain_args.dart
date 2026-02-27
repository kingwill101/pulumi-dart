// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_redirect.dart';

/// The set of arguments for Domain.
class DomainArgs {
  /// The domain name of the association.
  final pulumi.Input<String> domainName;

  /// If set, the domain should redirect with the provided parameters.
  final pulumi.Input<DomainRedirect>? domainRedirect;
  final pulumi.Input<String>? project;

  /// The site name of the association.
  final pulumi.Input<String> site;
  final pulumi.Input<String> siteId;

  DomainArgs({
    required this.domainName,
    this.domainRedirect,
    this.project,
    required this.site,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final domainRedirectValue = domainRedirect;
    if (domainRedirectValue != null) {
      map['domainRedirect'] = pulumi.Input.mapOptionalInputValue<DomainRedirect,
          Map<String, dynamic>>(domainRedirectValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['site'] = site;
    map['siteId'] = siteId;
    return map;
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      domainRedirect:
          pulumi.Input.asOptionalInput<DomainRedirect>(map['domainRedirect']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      site: pulumi.Input.asInput<String>(map['site']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
    );
  }
}
