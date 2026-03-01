// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain_cert_info.dart';
import 'get_domains_domain_source.dart';

class GetDomainsDomain {
  /// Certificate Information.
  final List<GetDomainsDomainCertInfo> certInfos;
  /// In Order to Link the CDN Domain Name to Generate a CNAME Domain Name, in the Domain Name Resolution Service Provider at the Acceleration Domain Name CNAME Resolution to the Domain.
  final String cname;
  /// Creation Time.
  final String createTime;
  /// Review the Reason for the Failure Is Displayed.
  final String description;
  /// Your Domain Name.
  final String domainName;
  /// Last Modified Date.
  final String gmtModified;
  /// The ID of the Domain. Its value is same as Queue Name.
  final String id;
  /// The Resource Group ID.
  final String resourceGroupId;
  /// the Origin Server Information.
  final List<GetDomainsDomainSource> sources;
  /// The status of the resource.
  final String status;

  /// Creates a new [GetDomainsDomain].
  /// [certInfos] Certificate Information.
  /// [cname] In Order to Link the CDN Domain Name to Generate a CNAME Domain Name, in the Domain Name Resolution Service Provider at the Acceleration Domain Name CNAME Resolution to the Domain.
  /// [createTime] Creation Time.
  /// [description] Review the Reason for the Failure Is Displayed.
  /// [domainName] Your Domain Name.
  /// [gmtModified] Last Modified Date.
  /// [id] The ID of the Domain. Its value is same as Queue Name.
  /// [resourceGroupId] The Resource Group ID.
  /// [sources] the Origin Server Information.
  /// [status] The status of the resource.
  GetDomainsDomain({
    required this.certInfos,
    required this.cname,
    required this.createTime,
    required this.description,
    required this.domainName,
    required this.gmtModified,
    required this.id,
    required this.resourceGroupId,
    required this.sources,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certInfos': pulumi.Input.encodeList<GetDomainsDomainCertInfo, Map<String, dynamic>>(certInfos, (value) => value.toMap()),
      'cname': cname,
      'createTime': createTime,
      'description': description,
      'domainName': domainName,
      'gmtModified': gmtModified,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'sources': pulumi.Input.encodeList<GetDomainsDomainSource, Map<String, dynamic>>(sources, (value) => value.toMap()),
      'status': status,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      certInfos: pulumi.Input.decodeList<GetDomainsDomainCertInfo>(map['certInfos'], (value) => GetDomainsDomainCertInfo.fromMap((value as Map).cast<String, dynamic>())),
      cname: map['cname'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      domainName: map['domainName'] as String,
      gmtModified: map['gmtModified'] as String,
      id: map['id'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      sources: pulumi.Input.decodeList<GetDomainsDomainSource>(map['sources'], (value) => GetDomainsDomainSource.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
    );
  }
}

