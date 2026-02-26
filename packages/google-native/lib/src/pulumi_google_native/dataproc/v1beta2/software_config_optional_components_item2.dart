enum SoftwareConfigOptionalComponentsItem2 {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  anaconda("ANACONDA"),
  docker("DOCKER"),
  druid("DRUID"),
  flink("FLINK"),
  hbase("HBASE"),
  hiveWebhcat("HIVE_WEBHCAT"),
  jupyter("JUPYTER"),
  kerberos("KERBEROS"),
  presto("PRESTO"),
  ranger("RANGER"),
  solr("SOLR"),
  zeppelin("ZEPPELIN"),
  zookeeper("ZOOKEEPER");

  const SoftwareConfigOptionalComponentsItem2(this.value);
  final String value;

  static SoftwareConfigOptionalComponentsItem2 fromValue(String value) {
    for (final item in SoftwareConfigOptionalComponentsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SoftwareConfigOptionalComponentsItem2 value: $value');
  }
}
