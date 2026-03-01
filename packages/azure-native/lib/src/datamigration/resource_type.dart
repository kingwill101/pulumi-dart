enum ResourceType {
  valueSqlMi("SqlMi"),
  valueSqlVm("SqlVm"),
  valueSqlDb("SqlDb"),
  valueMongoToCosmosDbMongo("MongoToCosmosDbMongo");

  const ResourceType(this.value);
  final String value;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}

