// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerTimeoutHttp2PerRequest {
  /// Unit of time. Valid values: <span pulumi-lang-nodejs="`ms`" pulumi-lang-dotnet="`Ms`" pulumi-lang-go="`ms`" pulumi-lang-python="`ms`" pulumi-lang-yaml="`ms`" pulumi-lang-java="`ms`">`ms`</span>, <span pulumi-lang-nodejs="`s`" pulumi-lang-dotnet="`S`" pulumi-lang-go="`s`" pulumi-lang-python="`s`" pulumi-lang-yaml="`s`" pulumi-lang-java="`s`">`s`</span>.
  final String unit;

  /// Number of time units. Minimum value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int value;

  VirtualNodeSpecListenerTimeoutHttp2PerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory VirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp2PerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
