// ignore_for_file: unused_element, unnecessary_cast

class InterconnectMacsecPreSharedKey {
  /// (Optional, Deprecated)
  /// If set to true, the Interconnect connection is configured with a should-secure
  /// MACsec security policy, that allows the Google router to fallback to cleartext
  /// traffic if the MKA session cannot be established. By default, the Interconnect
  /// connection is configured with a must-secure security policy that drops all traffic
  /// if the MKA session cannot be established with your router.
  ///
  /// > **Warning:** `failOpen` is deprecated and will be removed in a future major release. Use other `failOpen` instead.
  final bool? failOpen;

  /// A name for this pre-shared key. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the first character
  /// must be a lowercase letter, and all following characters must be a dash, lowercase
  /// letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// A RFC3339 timestamp on or after which the key is valid. startTime can be in the
  /// future. If the keychain has a single key, startTime can be omitted. If the keychain
  /// has multiple keys, startTime is mandatory for each key. The start times of keys must
  /// be in increasing order. The start times of two consecutive keys must be at least 6
  /// hours apart.
  final String? startTime;

  InterconnectMacsecPreSharedKey({
    this.failOpen,
    required this.name,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final failOpenValue = failOpen;
    if (failOpenValue != null) {
      map['failOpen'] = failOpenValue;
    }
    map['name'] = name;
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory InterconnectMacsecPreSharedKey.fromMap(Map<String, dynamic> map) {
    return InterconnectMacsecPreSharedKey(
      failOpen: map['failOpen'] == null ? null : map['failOpen'] as bool,
      name: map['name'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
