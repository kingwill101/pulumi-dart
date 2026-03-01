/// The unit to assign to the metric. If you omit this, the unit is set as ``None``.
enum MetricTransformationUnit {
  bits("Bits"),
  bitsSecond("Bits/Second"),
  bytes("Bytes"),
  bytesSecond("Bytes/Second"),
  count("Count"),
  countSecond("Count/Second"),
  gigabits("Gigabits"),
  gigabitsSecond("Gigabits/Second"),
  gigabytes("Gigabytes"),
  gigabytesSecond("Gigabytes/Second"),
  kilobits("Kilobits"),
  kilobitsSecond("Kilobits/Second"),
  kilobytes("Kilobytes"),
  kilobytesSecond("Kilobytes/Second"),
  megabits("Megabits"),
  megabitsSecond("Megabits/Second"),
  megabytes("Megabytes"),
  megabytesSecond("Megabytes/Second"),
  microseconds("Microseconds"),
  milliseconds("Milliseconds"),
  none("None"),
  percent("Percent"),
  seconds("Seconds"),
  terabits("Terabits"),
  terabitsSecond("Terabits/Second"),
  terabytes("Terabytes"),
  terabytesSecond("Terabytes/Second");

  const MetricTransformationUnit(this.value);
  final String value;

  static MetricTransformationUnit fromValue(String value) {
    for (final item in MetricTransformationUnit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricTransformationUnit value: $value');
  }
}

