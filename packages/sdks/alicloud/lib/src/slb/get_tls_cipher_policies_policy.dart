// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tls_cipher_policies_policy_relate_listener.dart';

class GetTlsCipherPoliciesPolicy {
  /// The encryption algorithms supported. It depends on the value of `tls_versions`.
  final pulumi.Input<List<String>> ciphers;
  /// The creation time timestamp.
  final pulumi.Input<String> createTime;
  /// The ID of the Tls Cipher Policy.
  final pulumi.Input<String> id;
  /// Array of Relate Listeners.
  final pulumi.Input<List<GetTlsCipherPoliciesPolicyRelateListener>> relateListeners;
  /// TLS policy instance state.
  final pulumi.Input<String> status;
  /// The ID of TLS cipher policy.
  final pulumi.Input<String> tlsCipherPolicyId;
  /// TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  final pulumi.Input<String> tlsCipherPolicyName;
  /// The version of TLS protocol.
  final pulumi.Input<List<String>> tlsVersions;

  /// Creates a new [GetTlsCipherPoliciesPolicy].
  /// [ciphers] The encryption algorithms supported. It depends on the value of `tls_versions`.
  /// [createTime] The creation time timestamp.
  /// [id] The ID of the Tls Cipher Policy.
  /// [relateListeners] Array of Relate Listeners.
  /// [status] TLS policy instance state.
  /// [tlsCipherPolicyId] The ID of TLS cipher policy.
  /// [tlsCipherPolicyName] TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  /// [tlsVersions] The version of TLS protocol.
  GetTlsCipherPoliciesPolicy({
    required this.ciphers,
    required this.createTime,
    required this.id,
    required this.relateListeners,
    required this.status,
    required this.tlsCipherPolicyId,
    required this.tlsCipherPolicyName,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'createTime': createTime,
      'id': id,
      'relateListeners': pulumi.Input.mapInputValue<List<GetTlsCipherPoliciesPolicyRelateListener>, List<Map<String, dynamic>>>(relateListeners, (value) => pulumi.Input.encodeList<GetTlsCipherPoliciesPolicyRelateListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'tlsCipherPolicyId': tlsCipherPolicyId,
      'tlsCipherPolicyName': tlsCipherPolicyName,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetTlsCipherPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetTlsCipherPoliciesPolicy(
      ciphers: ((map['ciphers'] as List).cast<String>()).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      relateListeners: (pulumi.Input.decodeList<GetTlsCipherPoliciesPolicyRelateListener>(map['relateListeners'], (value) => GetTlsCipherPoliciesPolicyRelateListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      tlsCipherPolicyId: (map['tlsCipherPolicyId'] as String).input(),
      tlsCipherPolicyName: (map['tlsCipherPolicyName'] as String).input(),
      tlsVersions: ((map['tlsVersions'] as List).cast<String>()).input(),
    );
  }
}

