// ignore_for_file: unused_element, unnecessary_cast

class DomainClusterConfigZoneAwarenessConfig {
  /// Number of Availability Zones for the domain to use with <span pulumi-lang-nodejs="`zoneAwarenessEnabled`" pulumi-lang-dotnet="`ZoneAwarenessEnabled`" pulumi-lang-go="`zoneAwarenessEnabled`" pulumi-lang-python="`zone_awareness_enabled`" pulumi-lang-yaml="`zoneAwarenessEnabled`" pulumi-lang-java="`zoneAwarenessEnabled`">`zone_awareness_enabled`</span>. Defaults to <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>. Valid values: <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span> or <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>.
  final int? availabilityZoneCount;

  DomainClusterConfigZoneAwarenessConfig({
    this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneCountValue = availabilityZoneCount;
    if (availabilityZoneCountValue != null) {
      map['availabilityZoneCount'] = availabilityZoneCountValue;
    }
    return map;
  }

  factory DomainClusterConfigZoneAwarenessConfig.fromMap(
      Map<String, dynamic> map) {
    return DomainClusterConfigZoneAwarenessConfig(
      availabilityZoneCount: map['availabilityZoneCount'] == null
          ? null
          : map['availabilityZoneCount'] as int,
    );
  }
}
