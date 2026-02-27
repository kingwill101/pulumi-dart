// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'domain_redirect.dart';

/// The set of arguments for Domain.
class DomainArgs {
  /// The domain name of the association.
  final Input<String> domainName;

  /// If set, the domain should redirect with the provided parameters.
  final Input<DomainRedirect>? domainRedirect;
  final Input<String>? project;

  /// The site name of the association.
  final Input<String> site;
  final Input<String> siteId;

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
      map['domainRedirect'] =
          Input.mapOptionalInputValue<DomainRedirect, Map<String, dynamic>>(
              domainRedirectValue, (value) => value.toMap());
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
      domainName: Input.asInput<String>(map['domainName']),
      domainRedirect:
          Input.asOptionalInput<DomainRedirect>(map['domainRedirect']),
      project: Input.asOptionalInput<String>(map['project']),
      site: Input.asInput<String>(map['site']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
