// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_listen.dart';
import 'domain_redirect.dart';

/// {@template pulumi_wafv3_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_wafv3_domain_domain_args_doc}
class DomainArgs {
  final pulumi.Input<String>? accessType;
  /// The name of the domain name to query.
  final pulumi.Input<String> domain;
  /// The ID of the Web Application Firewall (WAF) instance.
  final pulumi.Input<String> instanceId;
  /// Configure listening information. See `listen` below.
  final pulumi.Input<DomainListen> listen;
  /// Configure forwarding information. See `redirect` below.
  final pulumi.Input<DomainRedirect> redirect;
  /// The ID of the Alibaba Cloud resource group.
  final pulumi.Input<String>? resourceManagerResourceGroupId;
  /// The tags. You can specify up to 20 tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainArgs].
  /// [accessType] Optional.
  /// [domain] The name of the domain name to query.
  /// [instanceId] The ID of the Web Application Firewall (WAF) instance.
  /// [listen] Configure listening information. See `listen` below.
  /// [redirect] Configure forwarding information. See `redirect` below.
  /// [resourceManagerResourceGroupId] The ID of the Alibaba Cloud resource group.
  /// [tags] The tags. You can specify up to 20 tags.
  DomainArgs({
    this.accessType,
    required this.domain,
    required this.instanceId,
    required this.listen,
    required this.redirect,
    this.resourceManagerResourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'domain': domain,
      'instanceId': instanceId,
      'listen': pulumi.Input.mapInputValue<DomainListen, Map<String, dynamic>>(listen, (value) => value.toMap()),
      'redirect': pulumi.Input.mapInputValue<DomainRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'resourceManagerResourceGroupId': ?resourceManagerResourceGroupId,
      'tags': ?tags,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      accessType: map['accessType'] == null ? null : (map['accessType'] as String).input(),
      domain: (map['domain'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      listen: (DomainListen.fromMap((map['listen'] as Map).cast<String, dynamic>())).input(),
      redirect: (DomainRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>())).input(),
      resourceManagerResourceGroupId: map['resourceManagerResourceGroupId'] == null ? null : (map['resourceManagerResourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

