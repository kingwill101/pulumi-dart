// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_resource_reference_response.dart';

/// Result data returned by getDnsResourceReferenceByTarResources.
class GetDnsResourceReferenceByTarResourcesResult {
  /// The result of dns resource reference request. A list of dns resource references for each of the azure resource in the request
  final List<DnsResourceReferenceResponse>? dnsResourceReferences;

  /// Creates a new [GetDnsResourceReferenceByTarResourcesResult].
  /// [dnsResourceReferences] The result of dns resource reference request. A list of dns resource references for each of the azure resource in the request
  GetDnsResourceReferenceByTarResourcesResult({
    this.dnsResourceReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResourceReferences': ?dnsResourceReferences == null ? null : pulumi.Input.encodeList<DnsResourceReferenceResponse, Map<String, dynamic>>(dnsResourceReferences!, (value) => value.toMap()),
    };
  }

  factory GetDnsResourceReferenceByTarResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetDnsResourceReferenceByTarResourcesResult(
      dnsResourceReferences: map['dnsResourceReferences'] == null ? null : pulumi.Input.decodeList<DnsResourceReferenceResponse>(map['dnsResourceReferences'], (value) => DnsResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

