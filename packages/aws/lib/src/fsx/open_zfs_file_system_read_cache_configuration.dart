// ignore_for_file: unused_element, unnecessary_cast


class OpenZfsFileSystemReadCacheConfiguration {
  /// Size of the file system's SSD read cache, in gibibytes (GiB). Required when `sizing_mode` is set to `USER_PROVISIONED`. Must not be set when any other `sizing_mode` is used.
  final int? size;
  /// Specifies how the provisioned SSD read cache is sized. Valid values are `NO_CACHE`, `USER_PROVISIONED`, and `PROPORTIONAL_TO_THROUGHPUT_CAPACITY`. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_OpenZFSReadCacheConfiguration.html) for more information.
  final String? sizingMode;

  /// Creates a new [OpenZfsFileSystemReadCacheConfiguration].
  /// [size] Size of the file system's SSD read cache, in gibibytes (GiB). Required when `sizing_mode` is set to `USER_PROVISIONED`. Must not be set when any other `sizing_mode` is used.
  /// [sizingMode] Specifies how the provisioned SSD read cache is sized. Valid values are `NO_CACHE`, `USER_PROVISIONED`, and `PROPORTIONAL_TO_THROUGHPUT_CAPACITY`. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_OpenZFSReadCacheConfiguration.html) for more information.
  OpenZfsFileSystemReadCacheConfiguration({
    this.size,
    this.sizingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'sizingMode': ?sizingMode,
    };
  }

  factory OpenZfsFileSystemReadCacheConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemReadCacheConfiguration(
      size: map['size'] == null ? null : map['size'] as int,
      sizingMode: map['sizingMode'] == null ? null : map['sizingMode'] as String,
    );
  }
}

