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
  const DomainArgs({
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
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      listen: pulumi.Input.fromValue(DomainListen.fromMap((map['listen']! as Map).cast<String, dynamic>())),
      redirect: pulumi.Input.fromValue(DomainRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())),
      resourceManagerResourceGroupId: (() { final guardedValue = map['resourceManagerResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

