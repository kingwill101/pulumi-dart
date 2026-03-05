/// Gets or sets the disk backing type.
enum DiskType {
  valueFlat("flat"),
  valuePmem("pmem"),
  valueRawphysical("rawphysical"),
  valueRawvirtual("rawvirtual"),
  valueSparse("sparse"),
  valueSesparse("sesparse"),
  valueUnknown("unknown");

  const DiskType(this.wireValue);
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

