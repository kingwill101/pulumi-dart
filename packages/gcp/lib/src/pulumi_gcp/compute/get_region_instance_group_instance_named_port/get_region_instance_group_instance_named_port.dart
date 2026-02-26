// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupInstanceNamedPort {
  /// The name of the instance group.  One of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span> must be provided.
  final String name;

  /// Integer port number
  final int port;

  GetRegionInstanceGroupInstanceNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['port'] = port;
    return map;
  }

  factory GetRegionInstanceGroupInstanceNamedPort.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupInstanceNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}
