// ignore_for_file: unused_element, unnecessary_cast

class ServerS3StorageOptions {
  /// Specifies whether or not performance for your Amazon S3 directories is optimized. Valid values are `DISABLED`, `ENABLED`.
  ///
  /// By default, home directory mappings have a `TYPE` of `DIRECTORY`. If you enable this option, you would then need to explicitly set the `HomeDirectoryMapEntry` Type to `FILE` if you want a mapping to have a file target. See [Using logical directories to simplify your Transfer Family directory structures](https://docs.aws.amazon.com/transfer/latest/userguide/logical-dir-mappings.html) for details.
  final String? directoryListingOptimization;

  /// Creates a new [ServerS3StorageOptions].
  /// [directoryListingOptimization] Specifies whether or not performance for your Amazon S3 directories is optimized. Valid values are `DISABLED`, `ENABLED`.
  ServerS3StorageOptions({
    this.directoryListingOptimization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final directoryListingOptimizationValue = directoryListingOptimization;
    if (directoryListingOptimizationValue != null) {
      map['directoryListingOptimization'] = directoryListingOptimizationValue;
    }
    return map;
  }

  factory ServerS3StorageOptions.fromMap(Map<String, dynamic> map) {
    return ServerS3StorageOptions(
      directoryListingOptimization: map['directoryListingOptimization'] == null
          ? null
          : map['directoryListingOptimization'] as String,
    );
  }
}
