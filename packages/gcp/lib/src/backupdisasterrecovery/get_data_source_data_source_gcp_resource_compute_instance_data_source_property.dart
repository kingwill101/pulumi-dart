// ignore_for_file: unused_element, unnecessary_cast

class GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty {
  /// The description of the Compute Engine instance.
  final String description;

  /// The machine type of the instance.
  final String machineType;

  /// Name of the compute instance backed up by the datasource.
  final String name;

  /// The total number of disks attached to the Instance.
  final String totalDiskCount;

  /// The sum of all the disk sizes.
  final String totalDiskSizeGb;

  /// Creates a new [GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty].
  /// [description] The description of the Compute Engine instance.
  /// [machineType] The machine type of the instance.
  /// [name] Name of the compute instance backed up by the datasource.
  /// [totalDiskCount] The total number of disks attached to the Instance.
  /// [totalDiskSizeGb] The sum of all the disk sizes.
  GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty({
    required this.description,
    required this.machineType,
    required this.name,
    required this.totalDiskCount,
    required this.totalDiskSizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['machineType'] = machineType;
    map['name'] = name;
    map['totalDiskCount'] = totalDiskCount;
    map['totalDiskSizeGb'] = totalDiskSizeGb;
    return map;
  }

  factory GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty.fromMap(
      Map<String, dynamic> map) {
    return GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty(
      description: map['description'] as String,
      machineType: map['machineType'] as String,
      name: map['name'] as String,
      totalDiskCount: map['totalDiskCount'] as String,
      totalDiskSizeGb: map['totalDiskSizeGb'] as String,
    );
  }
}
