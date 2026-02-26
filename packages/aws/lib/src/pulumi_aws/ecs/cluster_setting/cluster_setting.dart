// ignore_for_file: unused_element, unnecessary_cast

class ClusterSetting {
  /// Name of the setting to manage. Valid values: `containerInsights`.
  final String name;

  /// Value to assign to the setting. Valid values: <span pulumi-lang-nodejs="`enhanced`" pulumi-lang-dotnet="`Enhanced`" pulumi-lang-go="`enhanced`" pulumi-lang-python="`enhanced`" pulumi-lang-yaml="`enhanced`" pulumi-lang-java="`enhanced`">`enhanced`</span>, <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span>, <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final String value;

  ClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ClusterSetting.fromMap(Map<String, dynamic> map) {
    return ClusterSetting(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
