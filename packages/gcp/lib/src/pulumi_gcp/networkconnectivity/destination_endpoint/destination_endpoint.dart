// ignore_for_file: unused_element, unnecessary_cast

class DestinationEndpoint {
  /// The ASN of the remote IP prefix.
  final String asn;

  /// The CSP of the remote IP prefix.
  final String csp;

  /// (Output)
  /// The state of the DestinationEndpoint resource.
  final String? state;

  /// (Output)
  /// Time when the DestinationEndpoint resource was updated.
  final String? updateTime;

  DestinationEndpoint({
    required this.asn,
    required this.csp,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asn'] = asn;
    map['csp'] = csp;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory DestinationEndpoint.fromMap(Map<String, dynamic> map) {
    return DestinationEndpoint(
      asn: map['asn'] as String,
      csp: map['csp'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
