// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneReverseLookupConfigResponseDnsV1beta2 {
  final String kind;

  /// Creates a new [ManagedZoneReverseLookupConfigResponseDnsV1beta2].
  /// [kind] Required.
  ManagedZoneReverseLookupConfigResponseDnsV1beta2({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    return map;
  }

  factory ManagedZoneReverseLookupConfigResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfigResponseDnsV1beta2(
      kind: map['kind'] as String,
    );
  }
}
