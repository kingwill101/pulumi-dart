// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain_cert_info.dart';
import 'get_domains_domain_source.dart';

class GetDomainsDomain {
  /// Certificate Information.
  final pulumi.Input<List<GetDomainsDomainCertInfo>> certInfos;
  /// In Order to Link the CDN Domain Name to Generate a CNAME Domain Name, in the Domain Name Resolution Service Provider at the Acceleration Domain Name CNAME Resolution to the Domain.
  final pulumi.Input<String> cname;
  /// Creation Time.
  final pulumi.Input<String> createTime;
  /// Review the Reason for the Failure Is Displayed.
  final pulumi.Input<String> description;
  /// Your Domain Name.
  final pulumi.Input<String> domainName;
  /// Last Modified Date.
  final pulumi.Input<String> gmtModified;
  /// The ID of the Domain. Its value is same as Queue Name.
  final pulumi.Input<String> id;
  /// The Resource Group ID.
  final pulumi.Input<String> resourceGroupId;
  /// the Origin Server Information.
  final pulumi.Input<List<GetDomainsDomainSource>> sources;
  /// The status of the resource.
  final pulumi.Input<String> status;

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
  const GetDomainsDomain({
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
      'certInfos': pulumi.Input.mapInputValue<List<GetDomainsDomainCertInfo>, List<Map<String, dynamic>>>(certInfos, (value) => pulumi.Input.encodeList<GetDomainsDomainCertInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cname': cname,
      'createTime': createTime,
      'description': description,
      'domainName': domainName,
      'gmtModified': gmtModified,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'sources': pulumi.Input.mapInputValue<List<GetDomainsDomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetDomainsDomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      certInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainsDomainCertInfo>(map['certInfos']!, (value) => GetDomainsDomainCertInfo.fromMap((value as Map).cast<String, dynamic>()))),
      cname: pulumi.Input.fromValue(map['cname'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainsDomainSource>(map['sources']!, (value) => GetDomainsDomainSource.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

