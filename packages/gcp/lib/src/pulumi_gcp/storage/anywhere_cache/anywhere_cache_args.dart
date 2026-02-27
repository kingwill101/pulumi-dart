// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AnywhereCache.
class AnywhereCacheArgs {
  /// The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// Default value is `admit-on-first-miss`.
  /// Possible values are: `admit-on-first-miss`, `admit-on-second-miss`.
  final Input<String>? admissionPolicy;

  /// A reference to Bucket resource
  final Input<String> bucket;

  /// The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  final Input<String>? ttl;

  /// The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  final Input<String> zone;

  AnywhereCacheArgs({
    this.admissionPolicy,
    required this.bucket,
    this.ttl,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final admissionPolicyValue = admissionPolicy;
    if (admissionPolicyValue != null) {
      map['admissionPolicy'] = admissionPolicyValue;
    }
    map['bucket'] = bucket;
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory AnywhereCacheArgs.fromMap(Map<String, dynamic> map) {
    return AnywhereCacheArgs(
      admissionPolicy: Input.asOptionalInput<String>(map['admissionPolicy']),
      bucket: Input.asInput<String>(map['bucket']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
