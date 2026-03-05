/// A Region represents any valid Amazon region that may be targeted with deployments.
enum Region {
  aFSouth1("af-south-1"),
  aPEast1("ap-east-1"),
  aPEast2("ap-east-2"),
  aPNortheast1("ap-northeast-1"),
  aPNortheast2("ap-northeast-2"),
  aPNortheast3("ap-northeast-3"),
  aPSouth1("ap-south-1"),
  aPSouth2("ap-south-2"),
  aPSoutheast1("ap-southeast-1"),
  aPSoutheast2("ap-southeast-2"),
  aPSoutheast3("ap-southeast-3"),
  aPSoutheast4("ap-southeast-4"),
  aPSoutheast5("ap-southeast-5"),
  aPSoutheast7("ap-southeast-7"),
  cACentral("ca-central-1"),
  cAWest1("ca-west-1"),
  eUCentral1("eu-central-1"),
  eUCentral2("eu-central-2"),
  eUNorth1("eu-north-1"),
  eUSouth1("eu-south-1"),
  eUSouth2("eu-south-2"),
  eUWest1("eu-west-1"),
  eUWest2("eu-west-2"),
  eUWest3("eu-west-3"),
  iLCentral1("il-central-1"),
  mECentral1("me-central-1"),
  mESouth1("me-south-1"),
  mXCentral1("mx-central-1"),
  sAEast1("sa-east-1"),
  uSEast1("us-east-1"),
  uSEast2("us-east-2"),
  uSWest1("us-west-1"),
  uSWest2("us-west-2"),
  cNNorth1("cn-north-1"),
  cNNorthwest1("cn-northwest-1"),
  uSGovEast1("us-gov-east-1"),
  uSGovWest1("us-gov-west-1"),
  uSISOEast1("us-iso-east-1"),
  uSISOWest1("us-iso-west-1"),
  uSISOBEast1("us-isob-east-1"),
  eUISOEWest1("eu-isoe-west-1");

  const Region(this.wireValue);
  final String wireValue;

  static Region fromValue(String value) {
    for (final item in Region.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Region value: $value');
  }
}

