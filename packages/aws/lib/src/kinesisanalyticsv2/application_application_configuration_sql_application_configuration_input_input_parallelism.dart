// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism {
  /// The number of in-application streams to create.
  final int? count;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism].
  /// [count] The number of in-application streams to create.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': ?count};
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}
