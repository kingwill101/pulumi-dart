// ignore_for_file: unused_element, unnecessary_cast


class VvpInstanceResourceSpec {
  /// CPU number.
  final int? cpu;
  /// Memory size.
  final int? memoryGb;

  /// Creates a new [VvpInstanceResourceSpec].
  /// [cpu] CPU number.
  /// [memoryGb] Memory size.
  VvpInstanceResourceSpec({
    this.cpu,
    this.memoryGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
    };
  }

  factory VvpInstanceResourceSpec.fromMap(Map<String, dynamic> map) {
    return VvpInstanceResourceSpec(
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as int,
    );
  }
}

