// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_redirect.dart';

/// {@template pulumi_firebasehosting_v1beta1_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_domain_args_doc}
class DomainArgs {
  /// The domain name of the association.
  final pulumi.Input<String> domainName;
  /// If set, the domain should redirect with the provided parameters.
  final pulumi.Input<DomainRedirect>? domainRedirect;
  final pulumi.Input<String>? project;
  /// The site name of the association.
  final pulumi.Input<String> site;
  final pulumi.Input<String> siteId;

  /// Creates a new [DomainArgs].
  /// [domainName] The domain name of the association.
  /// [domainRedirect] If set, the domain should redirect with the provided parameters.
  /// [project] Optional.
  /// [site] The site name of the association.
  /// [siteId] Required.
  DomainArgs({
    required String domainName,
    DomainRedirect? domainRedirect,
    String? project,
    required String site,
    required String siteId,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      domainRedirect = pulumi.Input.asOptionalInput<DomainRedirect>(domainRedirect),
      project = pulumi.Input.asOptionalInput<String>(project),
      site = pulumi.Input.asInput<String>(site),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'domainRedirect': ?pulumi.Input.mapOptionalInputValue<DomainRedirect, Map<String, dynamic>>(domainRedirect, (value) => value.toMap()),
      'project': ?project,
      'site': site,
      'siteId': siteId,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      domainName: map['domainName'] as String,
      domainRedirect: map['domainRedirect'] == null ? null : DomainRedirect.fromMap((map['domainRedirect'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      site: map['site'] as String,
      siteId: map['siteId'] as String,
    );
  }
}

