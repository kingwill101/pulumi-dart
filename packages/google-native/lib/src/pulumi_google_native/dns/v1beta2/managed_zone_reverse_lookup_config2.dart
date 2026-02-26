// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneReverseLookupConfig2 {
  final String? kind;

  ManagedZoneReverseLookupConfig2({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory ManagedZoneReverseLookupConfig2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfig2(
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
