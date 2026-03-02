// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_listen.dart';
import 'domain_redirect.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  final pulumi.Input<String>? accessType;
  /// The CNAME assigned by WAF to the domain name.
  final pulumi.Input<String>? cname;
  /// The name of the domain name to query.
  final pulumi.Input<String>? domain;
  /// The domain ID.
  final pulumi.Input<String>? domainId;
  /// The ID of the Web Application Firewall (WAF) instance.
  final pulumi.Input<String>? instanceId;
  /// Configure listening information. See `listen` below.
  final pulumi.Input<DomainListen>? listen;
  /// Configure forwarding information. See `redirect` below.
  final pulumi.Input<DomainRedirect>? redirect;
  /// The ID of the Alibaba Cloud resource group.
  final pulumi.Input<String>? resourceManagerResourceGroupId;
  /// The status of the domain name.
  final pulumi.Input<int>? status;
  /// The tags. You can specify up to 20 tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainState].
  /// [accessType] Optional.
  /// [cname] The CNAME assigned by WAF to the domain name.
  /// [domain] The name of the domain name to query.
  /// [domainId] The domain ID.
  /// [instanceId] The ID of the Web Application Firewall (WAF) instance.
  /// [listen] Configure listening information. See `listen` below.
  /// [redirect] Configure forwarding information. See `redirect` below.
  /// [resourceManagerResourceGroupId] The ID of the Alibaba Cloud resource group.
  /// [status] The status of the domain name.
  /// [tags] The tags. You can specify up to 20 tags.
  DomainState({
    this.accessType,
    this.cname,
    this.domain,
    this.domainId,
    this.instanceId,
    this.listen,
    this.redirect,
    this.resourceManagerResourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'cname': ?cname,
      'domain': ?domain,
      'domainId': ?domainId,
      'instanceId': ?instanceId,
      'listen': ?pulumi.Input.mapOptionalInputValue<DomainListen, Map<String, dynamic>>(listen, (value) => value.toMap()),
      'redirect': ?pulumi.Input.mapOptionalInputValue<DomainRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'resourceManagerResourceGroupId': ?resourceManagerResourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      accessType: map['accessType'] == null ? null : (map['accessType']! as String).input(),
      cname: map['cname'] == null ? null : (map['cname']! as String).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      domainId: map['domainId'] == null ? null : (map['domainId']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      listen: map['listen'] == null ? null : (DomainListen.fromMap((map['listen']! as Map).cast<String, dynamic>())).input(),
      redirect: map['redirect'] == null ? null : (DomainRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())).input(),
      resourceManagerResourceGroupId: map['resourceManagerResourceGroupId'] == null ? null : (map['resourceManagerResourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

