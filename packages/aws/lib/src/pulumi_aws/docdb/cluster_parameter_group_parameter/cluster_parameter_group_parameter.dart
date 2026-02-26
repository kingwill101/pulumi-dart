// ignore_for_file: unused_element, unnecessary_cast

class ClusterParameterGroupParameter {
  /// Valid values are <span pulumi-lang-nodejs="`immediate`" pulumi-lang-dotnet="`Immediate`" pulumi-lang-go="`immediate`" pulumi-lang-python="`immediate`" pulumi-lang-yaml="`immediate`" pulumi-lang-java="`immediate`">`immediate`</span> and `pending-reboot`. Defaults to `pending-reboot`.
  final String? applyMethod;

  /// The name of the DocumentDB parameter.
  final String name;

  /// The value of the DocumentDB parameter.
  final String value;

  ClusterParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyMethodValue = applyMethod;
    if (applyMethodValue != null) {
      map['applyMethod'] = applyMethodValue;
    }
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ClusterParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupParameter(
      applyMethod:
          map['applyMethod'] == null ? null : map['applyMethod'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
