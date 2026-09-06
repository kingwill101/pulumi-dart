import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the disk backing type.
enum DiskType implements pulumi.PulumiEnum<String> {
  valueFlat("flat"),
  valuePmem("pmem"),
  valueRawphysical("rawphysical"),
  valueRawvirtual("rawvirtual"),
  valueSparse("sparse"),
  valueSesparse("sesparse"),
  valueUnknown("unknown");

  const DiskType(this.wireValue);
  @override
  final String wireValue;

  static DiskType fromValue(String value) {
    for (final item in DiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskType value: $value');
  }
}
