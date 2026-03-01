/// The type of IoT Security recommendation.
enum RecommendationType {
  valueIoTACRAuthentication("IoT_ACRAuthentication"),
  valueIoTAgentSendsUnutilizedMessages("IoT_AgentSendsUnutilizedMessages"),
  valueIoTBaseline("IoT_Baseline"),
  valueIoTEdgeHubMemOptimize("IoT_EdgeHubMemOptimize"),
  valueIoTEdgeLoggingOptions("IoT_EdgeLoggingOptions"),
  valueIoTInconsistentModuleSettings("IoT_InconsistentModuleSettings"),
  valueIoTInstallAgent("IoT_InstallAgent"),
  valueIoTIPFilterDenyAll("IoT_IPFilter_DenyAll"),
  valueIoTIPFilterPermissiveRule("IoT_IPFilter_PermissiveRule"),
  valueIoTOpenPorts("IoT_OpenPorts"),
  valueIoTPermissiveFirewallPolicy("IoT_PermissiveFirewallPolicy"),
  valueIoTPermissiveInputFirewallRules("IoT_PermissiveInputFirewallRules"),
  valueIoTPermissiveOutputFirewallRules("IoT_PermissiveOutputFirewallRules"),
  valueIoTPrivilegedDockerOptions("IoT_PrivilegedDockerOptions"),
  valueIoTSharedCredentials("IoT_SharedCredentials"),
  valueIoTVulnerableTLSCipherSuite("IoT_VulnerableTLSCipherSuite");

  const RecommendationType(this.value);
  final String value;

  static RecommendationType fromValue(String value) {
    for (final item in RecommendationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecommendationType value: $value');
  }
}

