// ignore_for_file: unused_element, unnecessary_cast

class FileCacheLustreConfigurationLogConfiguration {
  final String? destination;
  final String? level;

  FileCacheLustreConfigurationLogConfiguration({
    this.destination,
    this.level,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue;
    }
    final levelValue = level;
    if (levelValue != null) {
      map['level'] = levelValue;
    }
    return map;
  }

  factory FileCacheLustreConfigurationLogConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FileCacheLustreConfigurationLogConfiguration(
      destination:
          map['destination'] == null ? null : map['destination'] as String,
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}
