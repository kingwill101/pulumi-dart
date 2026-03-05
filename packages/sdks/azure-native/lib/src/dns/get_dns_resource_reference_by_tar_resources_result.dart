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
      'dnsResourceReferences': ?(() { final guardedValue = dnsResourceReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<DnsResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDnsResourceReferenceByTarResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetDnsResourceReferenceByTarResourcesResult(
      dnsResourceReferences: (() { final guardedValue = map['dnsResourceReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DnsResourceReferenceResponse>(guardedValue, (value) => DnsResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

