// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'interconnect_macsec_pre_shared_key_response3.dart';

/// Configuration information for enabling Media Access Control security (MACsec) on this Cloud Interconnect connection between Google and your on-premises router.
class InterconnectMacsecResponse3 {
  /// If set to true, the Interconnect connection is configured with a should-secure MACsec security policy, that allows the Google router to fallback to cleartext traffic if the MKA session cannot be established. By default, the Interconnect connection is configured with a must-secure security policy that drops all traffic if the MKA session cannot be established with your router.
  final bool failOpen;

  /// A keychain placeholder describing a set of named key objects along with their start times. A MACsec CKN/CAK is generated for each key in the key chain. Google router automatically picks the key with the most recent startTime when establishing or re-establishing a MACsec secure link.
  final List<InterconnectMacsecPreSharedKeyResponse3> preSharedKeys;

  InterconnectMacsecResponse3({
    required this.failOpen,
    required this.preSharedKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failOpen'] = failOpen;
    map['preSharedKeys'] = Input.encodeList<
        InterconnectMacsecPreSharedKeyResponse3,
        Map<String, dynamic>>(preSharedKeys, (value) => value.toMap());
    return map;
  }

  factory InterconnectMacsecResponse3.fromMap(Map<String, dynamic> map) {
    return InterconnectMacsecResponse3(
      failOpen: map['failOpen'] as bool,
      preSharedKeys: Input.decodeList<InterconnectMacsecPreSharedKeyResponse3>(
          map['preSharedKeys'],
          (value) => InterconnectMacsecPreSharedKeyResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
