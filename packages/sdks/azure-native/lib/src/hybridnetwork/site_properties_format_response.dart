// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'referenced_resource_response.dart';

/// Site properties.
class SitePropertiesFormatResponse {
  /// List of NFVIs
  final pulumi.Input<List<dynamic>?>? nfvis;
  /// The provisioning state of the site resource. **TODO**: Confirm if this is needed.
  final pulumi.Input<String> provisioningState;
  /// The list of site network services on the site.
  final pulumi.Input<List<ReferencedResourceResponse>> siteNetworkServiceReferences;

  /// Creates a new [SitePropertiesFormatResponse].
  /// [nfvis] List of NFVIs
  /// [provisioningState] The provisioning state of the site resource. **TODO**: Confirm if this is needed.
  /// [siteNetworkServiceReferences] The list of site network services on the site.
  const SitePropertiesFormatResponse({
    this.nfvis,
    required this.provisioningState,
    required this.siteNetworkServiceReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfvis': ?nfvis,
      'provisioningState': provisioningState,
      'siteNetworkServiceReferences': pulumi.Input.mapInputValue<List<ReferencedResourceResponse>, List<Map<String, dynamic>>>(siteNetworkServiceReferences, (value) => pulumi.Input.encodeList<ReferencedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SitePropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesFormatResponse(
      nfvis: (() { final guardedValue = map['nfvis']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      siteNetworkServiceReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<ReferencedResourceResponse>(map['siteNetworkServiceReferences']!, (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
