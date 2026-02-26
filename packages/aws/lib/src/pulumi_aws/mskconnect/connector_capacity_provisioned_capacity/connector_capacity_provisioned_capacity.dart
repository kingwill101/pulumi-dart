// ignore_for_file: unused_element, unnecessary_cast

class ConnectorCapacityProvisionedCapacity {
  /// The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>, <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>. The default value is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int? mcuCount;

  /// The number of workers that are allocated to the connector.
  final int workerCount;

  ConnectorCapacityProvisionedCapacity({
    this.mcuCount,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mcuCountValue = mcuCount;
    if (mcuCountValue != null) {
      map['mcuCount'] = mcuCountValue;
    }
    map['workerCount'] = workerCount;
    return map;
  }

  factory ConnectorCapacityProvisionedCapacity.fromMap(
      Map<String, dynamic> map) {
    return ConnectorCapacityProvisionedCapacity(
      mcuCount: map['mcuCount'] == null ? null : map['mcuCount'] as int,
      workerCount: map['workerCount'] as int,
    );
  }
}
