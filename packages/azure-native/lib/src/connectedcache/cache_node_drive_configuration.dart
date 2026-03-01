// ignore_for_file: unused_element, unnecessary_cast


/// Drive configuration for cache node
class CacheNodeDriveConfiguration {
  /// corresponding nginx cache number. Valid cache numbers are 1 - 20
  final int? cacheNumber;
  /// full binding for corresponding nginx cache drive
  final String? nginxMapping;
  /// physical path location of the folder used for caching content
  final String? physicalPath;
  /// physical size of the drive used for caching content
  final int? sizeInGb;

  /// Creates a new [CacheNodeDriveConfiguration].
  /// [cacheNumber] corresponding nginx cache number. Valid cache numbers are 1 - 20
  /// [nginxMapping] full binding for corresponding nginx cache drive
  /// [physicalPath] physical path location of the folder used for caching content
  /// [sizeInGb] physical size of the drive used for caching content
  CacheNodeDriveConfiguration({
    this.cacheNumber,
    this.nginxMapping,
    this.physicalPath,
    this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNumber': ?cacheNumber,
      'nginxMapping': ?nginxMapping,
      'physicalPath': ?physicalPath,
      'sizeInGb': ?sizeInGb,
    };
  }

  factory CacheNodeDriveConfiguration.fromMap(Map<String, dynamic> map) {
    return CacheNodeDriveConfiguration(
      cacheNumber: map['cacheNumber'] == null ? null : map['cacheNumber'] as int,
      nginxMapping: map['nginxMapping'] == null ? null : map['nginxMapping'] as String,
      physicalPath: map['physicalPath'] == null ? null : map['physicalPath'] as String,
      sizeInGb: map['sizeInGb'] == null ? null : map['sizeInGb'] as int,
    );
  }
}

