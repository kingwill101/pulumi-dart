// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_configuration_constraints_bgp_peer_asnrange_response_compute_v1.dart';

class InterconnectAttachmentConfigurationConstraintsResponseComputeV1 {
  /// Whether the attachment's BGP session requires/allows/disallows BGP MD5 authentication. This can take one of the following values: MD5_OPTIONAL, MD5_REQUIRED, MD5_UNSUPPORTED. For example, a Cross-Cloud Interconnect connection to a remote cloud provider that requires BGP MD5 authentication has the interconnectRemoteLocation attachment_configuration_constraints.bgp_md5 field set to MD5_REQUIRED, and that property is propagated to the attachment. Similarly, if BGP MD5 is MD5_UNSUPPORTED, an error is returned if MD5 is requested.
  final String bgpMd5;

  /// List of ASN ranges that the remote location is known to support. Formatted as an array of inclusive ranges {min: min-value, max: max-value}. For example, [{min: 123, max: 123}, {min: 64512, max: 65534}] allows the peer ASN to be 123 or anything in the range 64512-65534. This field is only advisory. Although the API accepts other ranges, these are the ranges that we recommend.
  final List<
          InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1>
      bgpPeerAsnRanges;

  InterconnectAttachmentConfigurationConstraintsResponseComputeV1({
    required this.bgpMd5,
    required this.bgpPeerAsnRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bgpMd5'] = bgpMd5;
    map['bgpPeerAsnRanges'] = pulumi.Input.encodeList<
        InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1,
        Map<String, dynamic>>(bgpPeerAsnRanges, (value) => value.toMap());
    return map;
  }

  factory InterconnectAttachmentConfigurationConstraintsResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InterconnectAttachmentConfigurationConstraintsResponseComputeV1(
      bgpMd5: map['bgpMd5'] as String,
      bgpPeerAsnRanges: pulumi.Input.decodeList<
              InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1>(
          map['bgpPeerAsnRanges'],
          (value) =>
              InterconnectAttachmentConfigurationConstraintsBgpPeerASNRangeResponseComputeV1
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
