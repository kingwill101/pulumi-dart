// ignore_for_file: unused_element, unnecessary_cast


/// The SKU (Stock Keeping Unit) assigned to this durable task scheduler
class SchedulerSku {
  /// The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  final int? capacity;
  /// The name of the SKU
  final String name;

  /// Creates a new [SchedulerSku].
  /// [capacity] The SKU capacity. This allows scale out/in for the resource and impacts zone redundancy
  /// [name] The name of the SKU
  SchedulerSku({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory SchedulerSku.fromMap(Map<String, dynamic> map) {
    return SchedulerSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
    );
  }
}

