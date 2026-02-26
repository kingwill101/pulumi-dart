// ignore_for_file: unused_element, unnecessary_cast

class ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig {
  /// The amount of time in seconds after which sessions will cease if no requests are received. Valid values are <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span> - <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span> (5–60 minutes). The value must be less than or equal to <span pulumi-lang-nodejs="`maximumTtl`" pulumi-lang-dotnet="`MaximumTtl`" pulumi-lang-go="`maximumTtl`" pulumi-lang-python="`maximum_ttl`" pulumi-lang-yaml="`maximumTtl`" pulumi-lang-java="`maximumTtl`">`maximum_ttl`</span>.
  final int idleTtl;

  /// The maximum amount of time in seconds to consider requests from the viewer as being part of the same session. Valid values are <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span> - <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span> (5–60 minutes). The value must be greater than or equal to <span pulumi-lang-nodejs="`idleTtl`" pulumi-lang-dotnet="`IdleTtl`" pulumi-lang-go="`idleTtl`" pulumi-lang-python="`idle_ttl`" pulumi-lang-yaml="`idleTtl`" pulumi-lang-java="`idleTtl`">`idle_ttl`</span>.
  final int maximumTtl;

  ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig({
    required this.idleTtl,
    required this.maximumTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idleTtl'] = idleTtl;
    map['maximumTtl'] = maximumTtl;
    return map;
  }

  factory ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig.fromMap(
      Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig(
      idleTtl: map['idleTtl'] as int,
      maximumTtl: map['maximumTtl'] as int,
    );
  }
}
