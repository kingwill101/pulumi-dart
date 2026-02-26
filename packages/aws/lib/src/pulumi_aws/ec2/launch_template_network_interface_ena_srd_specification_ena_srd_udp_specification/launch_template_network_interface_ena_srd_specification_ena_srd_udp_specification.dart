// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification {
  /// Whether to enable UDP traffic optimization through ENA Express. Requires <span pulumi-lang-nodejs="`enaSrdEnabled`" pulumi-lang-dotnet="`EnaSrdEnabled`" pulumi-lang-go="`enaSrdEnabled`" pulumi-lang-python="`ena_srd_enabled`" pulumi-lang-yaml="`enaSrdEnabled`" pulumi-lang-java="`enaSrdEnabled`">`ena_srd_enabled`</span> to be <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// NOTE: ENA Express requires [specific instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html#ena-express-requirements) and minimum bandwidth of 25 Gbps.
  final bool? enaSrdUdpEnabled;

  LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification({
    this.enaSrdUdpEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enaSrdUdpEnabledValue = enaSrdUdpEnabled;
    if (enaSrdUdpEnabledValue != null) {
      map['enaSrdUdpEnabled'] = enaSrdUdpEnabledValue;
    }
    return map;
  }

  factory LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification(
      enaSrdUdpEnabled: map['enaSrdUdpEnabled'] == null
          ? null
          : map['enaSrdUdpEnabled'] as bool,
    );
  }
}
