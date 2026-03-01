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
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? cname,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<DomainListen>? listen,
    pulumi.Output<DomainRedirect>? redirect,
    pulumi.Output<String>? resourceManagerResourceGroupId,
    pulumi.Output<int>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      cname = pulumi.Input.asOptionalInput<String>(cname),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      listen = pulumi.Input.asOptionalInput<DomainListen>(listen),
      redirect = pulumi.Input.asOptionalInput<DomainRedirect>(redirect),
      resourceManagerResourceGroupId = pulumi.Input.asOptionalInput<String>(resourceManagerResourceGroupId),
      status = pulumi.Input.asOptionalInput<int>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      cname: map['cname'] == null ? null : pulumi.Output.create<String>(map['cname'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      listen: map['listen'] == null ? null : pulumi.Output.create<DomainListen>(DomainListen.fromMap((map['listen'] as Map).cast<String, dynamic>())),
      redirect: map['redirect'] == null ? null : pulumi.Output.create<DomainRedirect>(DomainRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>())),
      resourceManagerResourceGroupId: map['resourceManagerResourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerResourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

