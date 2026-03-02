// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain_source.dart';

class GetDomainsDomain {
  /// Indicates the name of the certificate.
  final pulumi.Input<String> certName;
  /// The canonical name (CNAME) of the accelerated domain.
  final pulumi.Input<String> cname;
  /// The reason that causes the review failure.
  final pulumi.Input<String> description;
  /// The name of the DCDN Domain.
  final pulumi.Input<String> domainName;
  /// The time when the accelerated domain was last modified.
  final pulumi.Input<String> gmtModified;
  /// The ID of the DCDN Domain.
  final pulumi.Input<String> id;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The acceleration region.
  final pulumi.Input<String> scope;
  /// The origin information.
  final pulumi.Input<List<GetDomainsDomainSource>> sources;
  /// Indicates whether the SSL certificate is enabled.
  final pulumi.Input<String> sslProtocol;
  /// Indicates the public key of the certificate.
  final pulumi.Input<String> sslPub;
  /// The status of DCDN Domain.
  final pulumi.Input<String> status;

  /// Creates a new [GetDomainsDomain].
  /// [certName] Indicates the name of the certificate.
  /// [cname] The canonical name (CNAME) of the accelerated domain.
  /// [description] The reason that causes the review failure.
  /// [domainName] The name of the DCDN Domain.
  /// [gmtModified] The time when the accelerated domain was last modified.
  /// [id] The ID of the DCDN Domain.
  /// [resourceGroupId] The ID of the resource group.
  /// [scope] The acceleration region.
  /// [sources] The origin information.
  /// [sslProtocol] Indicates whether the SSL certificate is enabled.
  /// [sslPub] Indicates the public key of the certificate.
  /// [status] The status of DCDN Domain.
  GetDomainsDomain({
    required this.certName,
    required this.cname,
    required this.description,
    required this.domainName,
    required this.gmtModified,
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
      'description': description,
      'domainName': domainName,
      'gmtModified': gmtModified,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'scope': scope,
      'sources': pulumi.Input.mapInputValue<List<GetDomainsDomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetDomainsDomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslProtocol': sslProtocol,
      'sslPub': sslPub,
      'status': status,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      certName: (map['certName'] as String).input(),
      cname: (map['cname'] as String).input(),
      description: (map['description'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      gmtModified: (map['gmtModified'] as String).input(),
      id: (map['id'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      scope: (map['scope'] as String).input(),
      sources: (pulumi.Input.decodeList<GetDomainsDomainSource>(map['sources'], (value) => GetDomainsDomainSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sslProtocol: (map['sslProtocol'] as String).input(),
      sslPub: (map['sslPub'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

