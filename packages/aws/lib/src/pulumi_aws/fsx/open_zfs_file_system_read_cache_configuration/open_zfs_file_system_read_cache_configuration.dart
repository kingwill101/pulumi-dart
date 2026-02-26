// ignore_for_file: unused_element, unnecessary_cast

class OpenZfsFileSystemReadCacheConfiguration {
  /// Size of the file system's SSD read cache, in gibibytes (GiB). Required when <span pulumi-lang-nodejs="`sizingMode`" pulumi-lang-dotnet="`SizingMode`" pulumi-lang-go="`sizingMode`" pulumi-lang-python="`sizing_mode`" pulumi-lang-yaml="`sizingMode`" pulumi-lang-java="`sizingMode`">`sizing_mode`</span> is set to `USER_PROVISIONED`. Must not be set when any other <span pulumi-lang-nodejs="`sizingMode`" pulumi-lang-dotnet="`SizingMode`" pulumi-lang-go="`sizingMode`" pulumi-lang-python="`sizing_mode`" pulumi-lang-yaml="`sizingMode`" pulumi-lang-java="`sizingMode`">`sizing_mode`</span> is used.
  final int? size;

  /// Specifies how the provisioned SSD read cache is sized. Valid values are `NO_CACHE`, `USER_PROVISIONED`, and `PROPORTIONAL_TO_THROUGHPUT_CAPACITY`. See the [AWS API documentation](https://docs.aws.amazon.com/fsx/latest/APIReference/API_OpenZFSReadCacheConfiguration.html) for more information.
  final String? sizingMode;

  OpenZfsFileSystemReadCacheConfiguration({
    this.size,
    this.sizingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final sizingModeValue = sizingMode;
    if (sizingModeValue != null) {
      map['sizingMode'] = sizingModeValue;
    }
    return map;
  }

  factory OpenZfsFileSystemReadCacheConfiguration.fromMap(
      Map<String, dynamic> map) {
    return OpenZfsFileSystemReadCacheConfiguration(
      size: map['size'] == null ? null : map['size'] as int,
      sizingMode:
          map['sizingMode'] == null ? null : map['sizingMode'] as String,
    );
  }
}
