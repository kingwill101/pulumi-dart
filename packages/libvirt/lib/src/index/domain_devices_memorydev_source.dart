// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesMemorydevSource {
  /// Configures the alignment size for the memory device's source, specifying how it should align in memory.
  final double? alignSize;
  /// Sets the unit of measurement for the alignment size of the memory device's source.
  final String? alignSizeUnit;
  /// Configures the node mask for the memory device's source, determining which memory nodes are accessible.
  final String? nodeMask;
  /// Sets the page size for the memory device's source, configuring how memory is divided into pages.
  final double? pageSize;
  /// Specifies the unit for the page size of the memory device's source.
  final String? pageSizeUnit;
  /// Configures the path for the backing storage of the memory device's source.
  final String? path;
  /// Sets the PMEM (Persistent Memory) configuration for the memory device source, indicating if it should use persistent memory.
  final bool? pmem;

  /// Creates a new [DomainDevicesMemorydevSource].
  /// [alignSize] Configures the alignment size for the memory device's source, specifying how it should align in memory.
  /// [alignSizeUnit] Sets the unit of measurement for the alignment size of the memory device's source.
  /// [nodeMask] Configures the node mask for the memory device's source, determining which memory nodes are accessible.
  /// [pageSize] Sets the page size for the memory device's source, configuring how memory is divided into pages.
  /// [pageSizeUnit] Specifies the unit for the page size of the memory device's source.
  /// [path] Configures the path for the backing storage of the memory device's source.
  /// [pmem] Sets the PMEM (Persistent Memory) configuration for the memory device source, indicating if it should use persistent memory.
  DomainDevicesMemorydevSource({
    this.alignSize,
    this.alignSizeUnit,
    this.nodeMask,
    this.pageSize,
    this.pageSizeUnit,
    this.path,
    this.pmem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alignSize': ?alignSize,
      'alignSizeUnit': ?alignSizeUnit,
      'nodeMask': ?nodeMask,
      'pageSize': ?pageSize,
      'pageSizeUnit': ?pageSizeUnit,
      'path': ?path,
      'pmem': ?pmem,
    };
  }

  factory DomainDevicesMemorydevSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevSource(
      alignSize: map['alignSize'] == null ? null : map['alignSize'] as double,
      alignSizeUnit: map['alignSizeUnit'] == null ? null : map['alignSizeUnit'] as String,
      nodeMask: map['nodeMask'] == null ? null : map['nodeMask'] as String,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as double,
      pageSizeUnit: map['pageSizeUnit'] == null ? null : map['pageSizeUnit'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      pmem: map['pmem'] == null ? null : map['pmem'] as bool,
    );
  }
}

