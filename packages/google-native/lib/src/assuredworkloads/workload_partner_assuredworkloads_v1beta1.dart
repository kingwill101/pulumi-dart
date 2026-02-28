/// Optional. Partner regime associated with this workload.
enum WorkloadPartnerAssuredworkloadsV1beta1 {
  partnerUnspecified("PARTNER_UNSPECIFIED"),
  localControlsByS3ns("LOCAL_CONTROLS_BY_S3NS"),
  sovereignControlsByTSystems("SOVEREIGN_CONTROLS_BY_T_SYSTEMS"),
  sovereignControlsBySiaMinsait("SOVEREIGN_CONTROLS_BY_SIA_MINSAIT"),
  sovereignControlsByPsn("SOVEREIGN_CONTROLS_BY_PSN");

  const WorkloadPartnerAssuredworkloadsV1beta1(this.value);
  final String value;

  static WorkloadPartnerAssuredworkloadsV1beta1 fromValue(String value) {
    for (final item in WorkloadPartnerAssuredworkloadsV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadPartnerAssuredworkloadsV1beta1 value: $value');
  }
}

