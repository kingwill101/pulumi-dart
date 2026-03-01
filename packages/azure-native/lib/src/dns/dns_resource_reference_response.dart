// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Represents a single Azure resource and its referencing DNS records.
class DnsResourceReferenceResponse {
  /// A list of dns Records
  final List<SubResourceResponse>? dnsResources;
  /// A reference to an azure resource from where the dns resource value is taken.
  final SubResourceResponse? targetResource;

  /// Creates a new [DnsResourceReferenceResponse].
  /// [dnsResources] A list of dns Records
  /// [targetResource] A reference to an azure resource from where the dns resource value is taken.
  DnsResourceReferenceResponse({
    this.dnsResources,
    this.targetResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResources': ?dnsResources == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(dnsResources!, (value) => value.toMap()),
      'targetResource': ?targetResource == null ? null : targetResource!.toMap(),
    };
  }

  factory DnsResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return DnsResourceReferenceResponse(
      dnsResources: map['dnsResources'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['dnsResources'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetResource: map['targetResource'] == null ? null : SubResourceResponse.fromMap((map['targetResource'] as Map).cast<String, dynamic>()),
    );
  }
}

