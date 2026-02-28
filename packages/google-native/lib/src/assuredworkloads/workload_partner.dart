/// Optional. Partner regime associated with this workload.
enum WorkloadPartner {
  partnerUnspecified("PARTNER_UNSPECIFIED"),
  localControlsByS3ns("LOCAL_CONTROLS_BY_S3NS"),
  sovereignControlsByTSystems("SOVEREIGN_CONTROLS_BY_T_SYSTEMS"),
  sovereignControlsBySiaMinsait("SOVEREIGN_CONTROLS_BY_SIA_MINSAIT"),
  sovereignControlsByPsn("SOVEREIGN_CONTROLS_BY_PSN");

  const WorkloadPartner(this.value);
  final String value;

  static WorkloadPartner fromValue(String value) {
    for (final item in WorkloadPartner.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadPartner value: $value');
  }
}

