enum ResourceType {
  valueSqlMi("SqlMi"),
  valueSqlVm("SqlVm"),
  valueSqlDb("SqlDb"),
  valueMongoToCosmosDbMongo("MongoToCosmosDbMongo");

  const ResourceType(this.wireValue);
  final String wireValue;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}

