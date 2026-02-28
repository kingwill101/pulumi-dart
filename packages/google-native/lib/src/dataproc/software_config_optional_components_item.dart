enum SoftwareConfigOptionalComponentsItem {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  anaconda("ANACONDA"),
  docker("DOCKER"),
  druid("DRUID"),
  flink("FLINK"),
  hbase("HBASE"),
  hiveWebhcat("HIVE_WEBHCAT"),
  hudi("HUDI"),
  jupyter("JUPYTER"),
  presto("PRESTO"),
  trino("TRINO"),
  ranger("RANGER"),
  solr("SOLR"),
  zeppelin("ZEPPELIN"),
  zookeeper("ZOOKEEPER");

  const SoftwareConfigOptionalComponentsItem(this.value);
  final String value;

  static SoftwareConfigOptionalComponentsItem fromValue(String value) {
    for (final item in SoftwareConfigOptionalComponentsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftwareConfigOptionalComponentsItem value: $value');
  }
}

