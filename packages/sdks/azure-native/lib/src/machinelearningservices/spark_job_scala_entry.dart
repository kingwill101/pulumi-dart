// ignore_for_file: unused_element, unnecessary_cast


class SparkJobScalaEntry {
  /// [Required] Scala class name used as entry point.
  final String className;
  /// Expected value is 'SparkJobScalaEntry'.
  final String sparkJobEntryType;

  /// Creates a new [SparkJobScalaEntry].
  /// [className] [Required] Scala class name used as entry point.
  /// [sparkJobEntryType] Expected value is 'SparkJobScalaEntry'.
  SparkJobScalaEntry({
    required this.className,
    required this.sparkJobEntryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
      'sparkJobEntryType': sparkJobEntryType,
    };
  }

  factory SparkJobScalaEntry.fromMap(Map<String, dynamic> map) {
    return SparkJobScalaEntry(
      className: map['className'] as String,
      sparkJobEntryType: map['sparkJobEntryType'] as String,
    );
  }
}

