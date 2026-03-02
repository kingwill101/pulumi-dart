// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipa_domains_domain_source.dart';

class GetIpaDomainsDomain {
  /// CertName.
  final pulumi.Input<String> certName;
  /// The CNAME assigned to the domain name.
  final pulumi.Input<String> cname;
  /// The time when the accelerated domain name was created.
  final pulumi.Input<String> createTime;
  /// The description.
  final pulumi.Input<String> description;
  /// The name of the Domain.
  final pulumi.Input<String> domainName;
  /// The ID of the Ipa Domain.
  final pulumi.Input<String> id;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The accelerated region.
  final pulumi.Input<String> scope;
  /// The information about the origin server.
  final pulumi.Input<List<GetIpaDomainsDomainSource>> sources;
  /// Indicates whether the Security Socket Layer (SSL) certificate is enabled.
  final pulumi.Input<String> sslProtocol;
  /// Indicates the public key of the certificate if the HTTPS protocol is enabled.
  final pulumi.Input<String> sslPub;
  /// The status of the accelerated domain name. Valid values: `check_failed`, `checking`, `configure_failed`, `configuring`, `offline`, `online`.
  final pulumi.Input<String> status;

  /// Creates a new [GetIpaDomainsDomain].
  /// [certName] CertName.
  /// [cname] The CNAME assigned to the domain name.
  /// [createTime] The time when the accelerated domain name was created.
  /// [description] The description.
  /// [domainName] The name of the Domain.
  /// [id] The ID of the Ipa Domain.
  /// [resourceGroupId] The ID of the resource group.
  /// [scope] The accelerated region.
  /// [sources] The information about the origin server.
  /// [sslProtocol] Indicates whether the Security Socket Layer (SSL) certificate is enabled.
  /// [sslPub] Indicates the public key of the certificate if the HTTPS protocol is enabled.
  /// [status] The status of the accelerated domain name. Valid values: `check_failed`, `checking`, `configure_failed`, `configuring`, `offline`, `online`.
  GetIpaDomainsDomain({
    required this.certName,
    required this.cname,
    required this.createTime,
    required this.description,
    required this.domainName,
    required this.id,
    required this.resourceGroupId,
    required this.scope,
    required this.sources,
    required this.sslProtocol,
    required this.sslPub,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': certName,
      'cname': cname,
      'createTime': createTime,
      'description': description,
      'domainName': domainName,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'scope': scope,
      'sources': pulumi.Input.mapInputValue<List<GetIpaDomainsDomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetIpaDomainsDomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslProtocol': sslProtocol,
      'sslPub': sslPub,
      'status': status,
    };
  }

  factory GetIpaDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetIpaDomainsDomain(
      certName: (map['certName'] as String).input(),
      cname: (map['cname'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      id: (map['id'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      scope: (map['scope'] as String).input(),
      sources: (pulumi.Input.decodeList<GetIpaDomainsDomainSource>(map['sources'], (value) => GetIpaDomainsDomainSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sslProtocol: (map['sslProtocol'] as String).input(),
      sslPub: (map['sslPub'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

