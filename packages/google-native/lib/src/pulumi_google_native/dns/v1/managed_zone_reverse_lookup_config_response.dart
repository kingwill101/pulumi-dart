// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneReverseLookupConfigResponse {
  final String kind;

  ManagedZoneReverseLookupConfigResponse({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    return map;
  }

  factory ManagedZoneReverseLookupConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfigResponse(
      kind: map['kind'] as String,
    );
  }
}
