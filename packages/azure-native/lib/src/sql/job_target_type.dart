/// The target type.
enum JobTargetType {
  valueTargetGroup("TargetGroup"),
  valueSqlDatabase("SqlDatabase"),
  valueSqlElasticPool("SqlElasticPool"),
  valueSqlShardMap("SqlShardMap"),
  valueSqlServer("SqlServer");

  const JobTargetType(this.value);
  final String value;

  static JobTargetType fromValue(String value) {
    for (final item in JobTargetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTargetType value: $value');
  }
}

