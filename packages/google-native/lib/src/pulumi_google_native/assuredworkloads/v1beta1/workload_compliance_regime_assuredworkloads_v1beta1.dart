/// Required. Immutable. Compliance Regime associated with this workload.
enum WorkloadComplianceRegimeAssuredworkloadsV1beta1 {
  complianceRegimeUnspecified("COMPLIANCE_REGIME_UNSPECIFIED"),
  il4("IL4"),
  cjis("CJIS"),
  fedrampHigh("FEDRAMP_HIGH"),
  fedrampModerate("FEDRAMP_MODERATE"),
  usRegionalAccess("US_REGIONAL_ACCESS"),
  hipaa("HIPAA"),
  hitrust("HITRUST"),
  euRegionsAndSupport("EU_REGIONS_AND_SUPPORT"),
  caRegionsAndSupport("CA_REGIONS_AND_SUPPORT"),
  itar("ITAR"),
  auRegionsAndUsSupport("AU_REGIONS_AND_US_SUPPORT"),
  assuredWorkloadsForPartners("ASSURED_WORKLOADS_FOR_PARTNERS"),
  isrRegions("ISR_REGIONS"),
  isrRegionsAndSupport("ISR_REGIONS_AND_SUPPORT"),
  caProtectedB("CA_PROTECTED_B"),
  il5("IL5"),
  il2("IL2"),
  jpRegionsAndSupport("JP_REGIONS_AND_SUPPORT");

  const WorkloadComplianceRegimeAssuredworkloadsV1beta1(this.value);
  final String value;

  static WorkloadComplianceRegimeAssuredworkloadsV1beta1 fromValue(
      String value) {
    for (final item in WorkloadComplianceRegimeAssuredworkloadsV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown WorkloadComplianceRegimeAssuredworkloadsV1beta1 value: $value');
  }
}
