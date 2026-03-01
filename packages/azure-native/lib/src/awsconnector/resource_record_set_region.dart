/// Property value
enum ResourceRecordSetRegion {
  afSouth1("af-south-1"),
  apEast1("ap-east-1"),
  apNortheast1("ap-northeast-1"),
  apNortheast2("ap-northeast-2"),
  apNortheast3("ap-northeast-3"),
  apSouth1("ap-south-1"),
  apSouth2("ap-south-2"),
  apSoutheast1("ap-southeast-1"),
  apSoutheast2("ap-southeast-2"),
  apSoutheast3("ap-southeast-3"),
  apSoutheast4("ap-southeast-4"),
  caCentral1("ca-central-1"),
  caWest1("ca-west-1"),
  cnNorth1("cn-north-1"),
  cnNorthwest1("cn-northwest-1"),
  euCentral1("eu-central-1"),
  euCentral2("eu-central-2"),
  euNorth1("eu-north-1"),
  euSouth1("eu-south-1"),
  euSouth2("eu-south-2"),
  euWest1("eu-west-1"),
  euWest2("eu-west-2"),
  euWest3("eu-west-3"),
  ilCentral1("il-central-1"),
  meCentral1("me-central-1"),
  meSouth1("me-south-1"),
  saEast1("sa-east-1"),
  usEast1("us-east-1"),
  usEast2("us-east-2"),
  usWest1("us-west-1"),
  usWest2("us-west-2");

  const ResourceRecordSetRegion(this.value);
  final String value;

  static ResourceRecordSetRegion fromValue(String value) {
    for (final item in ResourceRecordSetRegion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceRecordSetRegion value: $value');
  }
}

