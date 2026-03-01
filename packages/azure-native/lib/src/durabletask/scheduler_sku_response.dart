// ignore_for_file: unused_element, unnecessary_cast


/// The SKU (Stock Keeping Unit) assigned to this durable task scheduler
class SchedulerSkuResponse {
  /// The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  final int? capacity;
  /// The name of the SKU
  final String name;
  /// Indicates whether the current SKU configuration is zone redundant
  final String redundancyState;

  /// Creates a new [SchedulerSkuResponse].
  /// [capacity] The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  /// [name] The name of the SKU
  /// [redundancyState] Indicates whether the current SKU configuration is zone redundant
  SchedulerSkuResponse({
    this.capacity,
    required this.name,
    required this.redundancyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'redundancyState': redundancyState,
    };
  }

  factory SchedulerSkuResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerSkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
      redundancyState: map['redundancyState'] as String,
    );
  }
}

