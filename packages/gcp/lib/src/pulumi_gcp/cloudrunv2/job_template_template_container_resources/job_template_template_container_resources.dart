// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateContainerResources {
  /// Only memory, CPU, and nvidia.com/gpu are supported. Use key <span pulumi-lang-nodejs="`cpu`" pulumi-lang-dotnet="`Cpu`" pulumi-lang-go="`cpu`" pulumi-lang-python="`cpu`" pulumi-lang-yaml="`cpu`" pulumi-lang-java="`cpu`">`cpu`</span> for CPU limit, <span pulumi-lang-nodejs="`memory`" pulumi-lang-dotnet="`Memory`" pulumi-lang-go="`memory`" pulumi-lang-python="`memory`" pulumi-lang-yaml="`memory`" pulumi-lang-java="`memory`">`memory`</span> for memory limit, `nvidia.com/gpu` for gpu limit. Note: The only supported values for CPU are '1', '2', '4', '6', and '8'. Setting 4 CPU requires at least 2Gi of memory, setting 6 or more CPU requires at least 4Gi of memory. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  final Map<String, String>? limits;

  JobTemplateTemplateContainerResources({
    this.limits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final limitsValue = limits;
    if (limitsValue != null) {
      map['limits'] = limitsValue;
    }
    return map;
  }

  factory JobTemplateTemplateContainerResources.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateTemplateContainerResources(
      limits: map['limits'] == null
          ? null
          : (map['limits'] as Map).cast<String, String>(),
    );
  }
}
