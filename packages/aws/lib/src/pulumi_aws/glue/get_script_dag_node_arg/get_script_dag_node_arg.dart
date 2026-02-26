// ignore_for_file: unused_element, unnecessary_cast

class GetScriptDagNodeArg {
  /// Name of the argument or property.
  final String name;

  /// Boolean if the value is used as a parameter. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? param;

  /// Value of the argument or property.
  final String value;

  GetScriptDagNodeArg({
    required this.name,
    this.param,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final paramValue = param;
    if (paramValue != null) {
      map['param'] = paramValue;
    }
    map['value'] = value;
    return map;
  }

  factory GetScriptDagNodeArg.fromMap(Map<String, dynamic> map) {
    return GetScriptDagNodeArg(
      name: map['name'] as String,
      param: map['param'] == null ? null : map['param'] as bool,
      value: map['value'] as String,
    );
  }
}
