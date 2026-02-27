// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_macsec_pre_shared_key_compute_v1.dart';

/// Configuration information for enabling Media Access Control security (MACsec) on this Cloud Interconnect connection between Google and your on-premises router.
class InterconnectMacsecComputeV1 {
  /// If set to true, the Interconnect connection is configured with a should-secure MACsec security policy, that allows the Google router to fallback to cleartext traffic if the MKA session cannot be established. By default, the Interconnect connection is configured with a must-secure security policy that drops all traffic if the MKA session cannot be established with your router.
  final bool? failOpen;

  /// A keychain placeholder describing a set of named key objects along with their start times. A MACsec CKN/CAK is generated for each key in the key chain. Google router automatically picks the key with the most recent startTime when establishing or re-establishing a MACsec secure link.
  final List<InterconnectMacsecPreSharedKeyComputeV1> preSharedKeys;

  InterconnectMacsecComputeV1({
    this.failOpen,
    required this.preSharedKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final failOpenValue = failOpen;
    if (failOpenValue != null) {
      map['failOpen'] = failOpenValue;
    }
    map['preSharedKeys'] = pulumi.Input.encodeList<
        InterconnectMacsecPreSharedKeyComputeV1,
        Map<String, dynamic>>(preSharedKeys, (value) => value.toMap());
    return map;
  }

  factory InterconnectMacsecComputeV1.fromMap(Map<String, dynamic> map) {
    return InterconnectMacsecComputeV1(
      failOpen: map['failOpen'] == null ? null : map['failOpen'] as bool,
      preSharedKeys:
          pulumi.Input.decodeList<InterconnectMacsecPreSharedKeyComputeV1>(
              map['preSharedKeys'],
              (value) => InterconnectMacsecPreSharedKeyComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
