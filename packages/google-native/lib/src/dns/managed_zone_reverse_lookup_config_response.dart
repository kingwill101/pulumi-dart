// ignore_for_file: unused_element, unnecessary_cast


class ManagedZoneReverseLookupConfigResponse {
  final String kind;

  /// Creates a new [ManagedZoneReverseLookupConfigResponse].
  /// [kind] Required.
  ManagedZoneReverseLookupConfigResponse({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
    };
  }

  factory ManagedZoneReverseLookupConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfigResponse(
      kind: map['kind'] as String,
    );
  }
}

