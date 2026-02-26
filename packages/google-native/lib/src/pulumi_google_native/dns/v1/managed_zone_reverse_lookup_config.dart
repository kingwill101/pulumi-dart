// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneReverseLookupConfig {
  final String? kind;

  ManagedZoneReverseLookupConfig({
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

  factory ManagedZoneReverseLookupConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneReverseLookupConfig(
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
