// ignore_for_file: unused_element, unnecessary_cast


class GetDiskTypesType {
  /// The maximum value of the data disk to supported the specific instance type
  final int max;
  /// The mininum value of the data disk to supported the specific instance type
  final int min;
  /// The value of the data disk or system disk
  final String value;

  /// Creates a new [GetDiskTypesType].
  /// [max] The maximum value of the data disk to supported the specific instance type
  /// [min] The mininum value of the data disk to supported the specific instance type
  /// [value] The value of the data disk or system disk
  GetDiskTypesType({
    required this.max,
    required this.min,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
      'value': value,
    };
  }

  factory GetDiskTypesType.fromMap(Map<String, dynamic> map) {
    return GetDiskTypesType(
      max: map['max'] as int,
      min: map['min'] as int,
      value: map['value'] as String,
    );
  }
}

