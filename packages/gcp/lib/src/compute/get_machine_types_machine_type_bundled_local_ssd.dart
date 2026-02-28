// ignore_for_file: unused_element, unnecessary_cast

class GetMachineTypesMachineTypeBundledLocalSsd {
  /// The default disk interface if the interface is not specified.
  final String defaultInterface;

  /// The number of partitions.
  final int partitionCount;

  /// Creates a new [GetMachineTypesMachineTypeBundledLocalSsd].
  /// [defaultInterface] The default disk interface if the interface is not specified.
  /// [partitionCount] The number of partitions.
  GetMachineTypesMachineTypeBundledLocalSsd({
    required this.defaultInterface,
    required this.partitionCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultInterface'] = defaultInterface;
    map['partitionCount'] = partitionCount;
    return map;
  }

  factory GetMachineTypesMachineTypeBundledLocalSsd.fromMap(
      Map<String, dynamic> map) {
    return GetMachineTypesMachineTypeBundledLocalSsd(
      defaultInterface: map['defaultInterface'] as String,
      partitionCount: map['partitionCount'] as int,
    );
  }
}
