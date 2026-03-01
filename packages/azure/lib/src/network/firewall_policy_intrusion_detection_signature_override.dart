// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyIntrusionDetectionSignatureOverride {
  /// 12-digit number (id) which identifies your signature.
  final String? id;
  /// state can be any of `Off`, `Alert` or `Deny`.
  final String? state;

  /// Creates a new [FirewallPolicyIntrusionDetectionSignatureOverride].
  /// [id] 12-digit number (id) which identifies your signature.
  /// [state] state can be any of `Off`, `Alert` or `Deny`.
  FirewallPolicyIntrusionDetectionSignatureOverride({
    this.id,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'state': ?state,
    };
  }

  factory FirewallPolicyIntrusionDetectionSignatureOverride.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionSignatureOverride(
      id: map['id'] == null ? null : map['id'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

