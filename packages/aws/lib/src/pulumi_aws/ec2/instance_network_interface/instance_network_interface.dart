// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkInterface {
  /// Whether or not to delete the network interface on instance termination. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Currently, the only valid value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, as this is only supported when creating new network interfaces when launching an instance.
  final bool? deleteOnTermination;

  /// Integer index of the network interface attachment. Limited by instance type.
  final int deviceIndex;

  /// Integer index of the network card. Limited by instance type. The default index is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int? networkCardIndex;

  /// ID of the network interface to attach.
  final String networkInterfaceId;

  InstanceNetworkInterface({
    this.deleteOnTermination,
    required this.deviceIndex,
    this.networkCardIndex,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    map['deviceIndex'] = deviceIndex;
    final networkCardIndexValue = networkCardIndex;
    if (networkCardIndexValue != null) {
      map['networkCardIndex'] = networkCardIndexValue;
    }
    map['networkInterfaceId'] = networkInterfaceId;
    return map;
  }

  factory InstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterface(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      deviceIndex: map['deviceIndex'] as int,
      networkCardIndex: map['networkCardIndex'] == null
          ? null
          : map['networkCardIndex'] as int,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}
