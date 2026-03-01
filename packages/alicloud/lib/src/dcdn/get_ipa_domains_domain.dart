// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipa_domains_domain_source.dart';

class GetIpaDomainsDomain {
  /// CertName.
  final String certName;
  /// The CNAME assigned to the domain name.
  final String cname;
  /// The time when the accelerated domain name was created.
  final String createTime;
  /// The description.
  final String description;
  /// The name of the Domain.
  final String domainName;
  /// The ID of the Ipa Domain.
  final String id;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The accelerated region.
  final String scope;
  /// The information about the origin server.
  final List<GetIpaDomainsDomainSource> sources;
  /// Indicates whether the Security Socket Layer (SSL) certificate is enabled.
  final String sslProtocol;
  /// Indicates the public key of the certificate if the HTTPS protocol is enabled.
  final String sslPub;
  /// The status of the accelerated domain name. Valid values: `check_failed`, `checking`, `configure_failed`, `configuring`, `offline`, `online`.
  final String status;

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
      'sources': pulumi.Input.encodeList<GetIpaDomainsDomainSource, Map<String, dynamic>>(sources, (value) => value.toMap()),
      'sslProtocol': sslProtocol,
      'sslPub': sslPub,
      'status': status,
    };
  }

  factory GetIpaDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetIpaDomainsDomain(
      certName: map['certName'] as String,
      cname: map['cname'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      scope: map['scope'] as String,
      sources: pulumi.Input.decodeList<GetIpaDomainsDomainSource>(map['sources'], (value) => GetIpaDomainsDomainSource.fromMap((value as Map).cast<String, dynamic>())),
      sslProtocol: map['sslProtocol'] as String,
      sslPub: map['sslPub'] as String,
      status: map['status'] as String,
    );
  }
}

