// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneReverseLookupConfigResponse2 {
  final String kind;

  ManagedZoneReverseLookupConfigResponse2({
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    return map;
  }

  factory ManagedZoneReverseLookupConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfigResponse2(
      kind: map['kind'] as String,
    );
  }
}
