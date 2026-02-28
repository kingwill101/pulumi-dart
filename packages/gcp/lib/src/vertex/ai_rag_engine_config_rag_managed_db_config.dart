// ignore_for_file: unused_element, unnecessary_cast

class AiRagEngineConfigRagManagedDbConfig {
  /// Basic tier is a cost-effective and low compute tier suitable for the following cases: Experimenting with RagManagedDb, Small data size, Latency insensitive workload, Only using RAG Engine with external vector DBs.
  /// NOTE: This is the default tier if not explicitly chosen.
  final Map<String, dynamic>? basic;

  /// Scaled tier offers production grade performance along with autoscaling functionality. It is suitable for customers with large amounts of data or performance sensitive workloads.
  final Map<String, dynamic>? scaled;

  /// Disables the RAG Engine service and deletes all your data held within this service. This will halt the billing of the service.
  /// NOTE: Once deleted the data cannot be recovered. To start using RAG Engine again, you will need to update the tier by calling the UpdateRagEngineConfig API.
  final Map<String, dynamic>? unprovisioned;

  /// Creates a new [AiRagEngineConfigRagManagedDbConfig].
  /// [basic] Basic tier is a cost-effective and low compute tier suitable for the following cases: Experimenting with RagManagedDb, Small data size, Latency insensitive workload, Only using RAG Engine with external vector DBs.
  /// [scaled] Scaled tier offers production grade performance along with autoscaling functionality. It is suitable for customers with large amounts of data or performance sensitive workloads.
  /// [unprovisioned] Disables the RAG Engine service and deletes all your data held within this service. This will halt the billing of the service.
  AiRagEngineConfigRagManagedDbConfig({
    this.basic,
    this.scaled,
    this.unprovisioned,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicValue = basic;
    if (basicValue != null) {
      map['basic'] = basicValue;
    }
    final scaledValue = scaled;
    if (scaledValue != null) {
      map['scaled'] = scaledValue;
    }
    final unprovisionedValue = unprovisioned;
    if (unprovisionedValue != null) {
      map['unprovisioned'] = unprovisionedValue;
    }
    return map;
  }

  factory AiRagEngineConfigRagManagedDbConfig.fromMap(
      Map<String, dynamic> map) {
    return AiRagEngineConfigRagManagedDbConfig(
      basic: map['basic'] == null
          ? null
          : (map['basic'] as Map).cast<String, dynamic>(),
      scaled: map['scaled'] == null
          ? null
          : (map['scaled'] as Map).cast<String, dynamic>(),
      unprovisioned: map['unprovisioned'] == null
          ? null
          : (map['unprovisioned'] as Map).cast<String, dynamic>(),
    );
  }
}
