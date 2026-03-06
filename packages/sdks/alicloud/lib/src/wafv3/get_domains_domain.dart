// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain_listen.dart';
import 'get_domains_domain_redirect.dart';

class GetDomainsDomain {
  /// The CNAME assigned by WAF to the domain name.
  final pulumi.Input<String> cname;
  /// The name of the domain name to query.
  final pulumi.Input<String> domain;
  /// The ID of the domain. It formats as `&lt;instance_id&gt;:&lt;domain&gt;`.
  final pulumi.Input<String> id;
  /// Configure listening information
  final pulumi.Input<List<GetDomainsDomainListen>> listens;
  /// Configure forwarding information.
  final pulumi.Input<List<GetDomainsDomainRedirect>> redirects;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceManagerResourceGroupId;
  /// The status of the domain.
  final pulumi.Input<String> status;

  /// Creates a new [GetDomainsDomain].
  /// [cname] The CNAME assigned by WAF to the domain name.
  /// [domain] The name of the domain name to query.
  /// [id] The ID of the domain. It formats as `&lt;instance_id&gt;:&lt;domain&gt;`.
  /// [listens] Configure listening information
  /// [redirects] Configure forwarding information.
  /// [resourceManagerResourceGroupId] The ID of the resource group.
  /// [status] The status of the domain.
  const GetDomainsDomain({
    required this.cname,
    required this.domain,
    required this.id,
    required this.listens,
    required this.redirects,
    required this.resourceManagerResourceGroupId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cname': cname,
      'domain': domain,
      'id': id,
      'listens': pulumi.Input.mapInputValue<List<GetDomainsDomainListen>, List<Map<String, dynamic>>>(listens, (value) => pulumi.Input.encodeList<GetDomainsDomainListen, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirects': pulumi.Input.mapInputValue<List<GetDomainsDomainRedirect>, List<Map<String, dynamic>>>(redirects, (value) => pulumi.Input.encodeList<GetDomainsDomainRedirect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceManagerResourceGroupId': resourceManagerResourceGroupId,
      'status': status,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      cname: pulumi.Input.fromValue(map['cname'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      listens: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainsDomainListen>(map['listens']!, (value) => GetDomainsDomainListen.fromMap((value as Map).cast<String, dynamic>()))),
      redirects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainsDomainRedirect>(map['redirects']!, (value) => GetDomainsDomainRedirect.fromMap((value as Map).cast<String, dynamic>()))),
      resourceManagerResourceGroupId: pulumi.Input.fromValue(map['resourceManagerResourceGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

