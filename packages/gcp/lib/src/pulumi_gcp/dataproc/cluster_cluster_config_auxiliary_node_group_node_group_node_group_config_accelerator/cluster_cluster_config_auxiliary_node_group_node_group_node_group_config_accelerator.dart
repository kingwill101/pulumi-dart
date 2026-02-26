// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator {
  /// The number of the accelerator cards of this type exposed to this instance. Often restricted to one of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, or <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>.
  ///
  ///
  /// - - -
  final int acceleratorCount;

  /// The short name of the accelerator type to expose to this instance. For example, `nvidia-tesla-k80`.
  final String acceleratorType;

  ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    return map;
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] as String,
    );
  }
}
