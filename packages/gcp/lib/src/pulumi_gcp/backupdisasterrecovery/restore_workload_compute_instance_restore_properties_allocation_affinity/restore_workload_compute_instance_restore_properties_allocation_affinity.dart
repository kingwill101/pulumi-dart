// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity {
  /// Possible values are: `TYPE_UNSPECIFIED`, `NO_RESERVATION`, `ANY_RESERVATION`, `SPECIFIC_RESERVATION`.
  final String? consumeAllocationType;

  /// (Optional)
  final String? key;

  /// (Optional)
  final List<String>? values;

  RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity({
    this.consumeAllocationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumeAllocationTypeValue = consumeAllocationType;
    if (consumeAllocationTypeValue != null) {
      map['consumeAllocationType'] = consumeAllocationTypeValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity(
      consumeAllocationType: map['consumeAllocationType'] == null
          ? null
          : map['consumeAllocationType'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
