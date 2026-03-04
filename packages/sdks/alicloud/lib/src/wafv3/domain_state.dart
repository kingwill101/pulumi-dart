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
      'listen':
          ?pulumi.Input.mapOptionalInputValue<
            DomainListen,
            Map<String, dynamic>
          >(listen, (value) => value.toMap()),
      'redirect':
          ?pulumi.Input.mapOptionalInputValue<
            DomainRedirect,
            Map<String, dynamic>
          >(redirect, (value) => value.toMap()),
      'resourceManagerResourceGroupId': ?resourceManagerResourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      accessType: (() {
        final guardedValue = map['accessType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cname: (() {
        final guardedValue = map['cname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainId: (() {
        final guardedValue = map['domainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listen: (() {
        final guardedValue = map['listen'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainListen.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      redirect: (() {
        final guardedValue = map['redirect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainRedirect.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceManagerResourceGroupId: (() {
        final guardedValue = map['resourceManagerResourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
