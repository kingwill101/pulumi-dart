// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterAutoscalingResourceLimit {
  /// Maximum amount of the resource in the cluster.
  final int maximum;

  /// Minimum amount of the resource in the cluster.
  final int? minimum;

  /// The type of the resource. For example, <span pulumi-lang-nodejs="`cpu`" pulumi-lang-dotnet="`Cpu`" pulumi-lang-go="`cpu`" pulumi-lang-python="`cpu`" pulumi-lang-yaml="`cpu`" pulumi-lang-java="`cpu`">`cpu`</span> and
  /// <span pulumi-lang-nodejs="`memory`" pulumi-lang-dotnet="`Memory`" pulumi-lang-go="`memory`" pulumi-lang-python="`memory`" pulumi-lang-yaml="`memory`" pulumi-lang-java="`memory`">`memory`</span>.  See the [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for a list of types.
  final String resourceType;

  ClusterClusterAutoscalingResourceLimit({
    required this.maximum,
    this.minimum,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    final minimumValue = minimum;
    if (minimumValue != null) {
      map['minimum'] = minimumValue;
    }
    map['resourceType'] = resourceType;
    return map;
  }

  factory ClusterClusterAutoscalingResourceLimit.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterAutoscalingResourceLimit(
      maximum: map['maximum'] as int,
      minimum: map['minimum'] == null ? null : map['minimum'] as int,
      resourceType: map['resourceType'] as String,
    );
  }
}
