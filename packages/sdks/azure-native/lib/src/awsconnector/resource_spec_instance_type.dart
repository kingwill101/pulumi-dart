/// The instance type that the image version runs on.
enum ResourceSpecInstanceType {
  mlC512xlarge("ml.c5.12xlarge"),
  mlC518xlarge("ml.c5.18xlarge"),
  mlC524xlarge("ml.c5.24xlarge"),
  mlC52xlarge("ml.c5.2xlarge"),
  mlC54xlarge("ml.c5.4xlarge"),
  mlC59xlarge("ml.c5.9xlarge"),
  mlC5Large("ml.c5.large"),
  mlC5Xlarge("ml.c5.xlarge"),
  mlG4dn12xlarge("ml.g4dn.12xlarge"),
  mlG4dn16xlarge("ml.g4dn.16xlarge"),
  mlG4dn2xlarge("ml.g4dn.2xlarge"),
  mlG4dn4xlarge("ml.g4dn.4xlarge"),
  mlG4dn8xlarge("ml.g4dn.8xlarge"),
  mlG4dnXlarge("ml.g4dn.xlarge"),
  mlG512xlarge("ml.g5.12xlarge"),
  mlG516xlarge("ml.g5.16xlarge"),
  mlG524xlarge("ml.g5.24xlarge"),
  mlG52xlarge("ml.g5.2xlarge"),
  mlG548xlarge("ml.g5.48xlarge"),
  mlG54xlarge("ml.g5.4xlarge"),
  mlG58xlarge("ml.g5.8xlarge"),
  mlG5Xlarge("ml.g5.xlarge"),
  mlGeospatialInteractive("ml.geospatial.interactive"),
  mlM512xlarge("ml.m5.12xlarge"),
  mlM516xlarge("ml.m5.16xlarge"),
  mlM524xlarge("ml.m5.24xlarge"),
  mlM52xlarge("ml.m5.2xlarge"),
  mlM54xlarge("ml.m5.4xlarge"),
  mlM58xlarge("ml.m5.8xlarge"),
  mlM5Large("ml.m5.large"),
  mlM5Xlarge("ml.m5.xlarge"),
  mlM5d12xlarge("ml.m5d.12xlarge"),
  mlM5d16xlarge("ml.m5d.16xlarge"),
  mlM5d24xlarge("ml.m5d.24xlarge"),
  mlM5d2xlarge("ml.m5d.2xlarge"),
  mlM5d4xlarge("ml.m5d.4xlarge"),
  mlM5d8xlarge("ml.m5d.8xlarge"),
  mlM5dLarge("ml.m5d.large"),
  mlM5dXlarge("ml.m5d.xlarge"),
  mlP316xlarge("ml.p3.16xlarge"),
  mlP32xlarge("ml.p3.2xlarge"),
  mlP38xlarge("ml.p3.8xlarge"),
  mlP3dn24xlarge("ml.p3dn.24xlarge"),
  mlP4d24xlarge("ml.p4d.24xlarge"),
  mlP4de24xlarge("ml.p4de.24xlarge"),
  mlR512xlarge("ml.r5.12xlarge"),
  mlR516xlarge("ml.r5.16xlarge"),
  mlR524xlarge("ml.r5.24xlarge"),
  mlR52xlarge("ml.r5.2xlarge"),
  mlR54xlarge("ml.r5.4xlarge"),
  mlR58xlarge("ml.r5.8xlarge"),
  mlR5Large("ml.r5.large"),
  mlR5Xlarge("ml.r5.xlarge"),
  mlT32xlarge("ml.t3.2xlarge"),
  mlT3Large("ml.t3.large"),
  mlT3Medium("ml.t3.medium"),
  mlT3Micro("ml.t3.micro"),
  mlT3Small("ml.t3.small"),
  mlT3Xlarge("ml.t3.xlarge"),
  mlTrn12xlarge("ml.trn1.2xlarge"),
  mlTrn132xlarge("ml.trn1.32xlarge"),
  mlTrn1n32xlarge("ml.trn1n.32xlarge"),
  system("system");

  const ResourceSpecInstanceType(this.wireValue);
  final String wireValue;

  static ResourceSpecInstanceType fromValue(String value) {
    for (final item in ResourceSpecInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceSpecInstanceType value: $value');
  }
}

