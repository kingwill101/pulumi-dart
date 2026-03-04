// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Represents a single Azure resource and its referencing DNS records.
class DnsResourceReferenceResponse {
  /// A list of dns Records
  final pulumi.Input<List<SubResourceResponse>>? dnsResources;

  /// A reference to an azure resource from where the dns resource value is taken.
  final pulumi.Input<SubResourceResponse>? targetResource;

  /// Creates a new [DnsResourceReferenceResponse].
  /// [dnsResources] A list of dns Records
  /// [targetResource] A reference to an azure resource from where the dns resource value is taken.
  DnsResourceReferenceResponse({this.dnsResources, this.targetResource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            dnsResources,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetResource':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(targetResource, (value) => value.toMap()),
    };
  }

  factory DnsResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return DnsResourceReferenceResponse(
      dnsResources: (() {
        final guardedValue = map['dnsResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      targetResource: (() {
        final guardedValue = map['targetResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
