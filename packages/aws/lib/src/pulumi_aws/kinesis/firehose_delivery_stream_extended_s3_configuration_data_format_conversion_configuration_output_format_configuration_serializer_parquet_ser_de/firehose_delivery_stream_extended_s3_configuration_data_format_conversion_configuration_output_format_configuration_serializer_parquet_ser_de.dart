// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe {
  /// The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
  final int? blockSizeBytes;

  /// The compression code to use over data blocks. The possible values are `UNCOMPRESSED`, `SNAPPY`, and `GZIP`, with the default being `SNAPPY`. Use `SNAPPY` for higher decompression speed. Use `GZIP` if the compression ratio is more important than speed.
  final String? compression;

  /// Indicates whether to enable dictionary compression.
  final bool? enableDictionaryCompression;

  /// The maximum amount of padding to apply. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is `0`.
  final int? maxPaddingBytes;

  /// The Parquet page size. Column chunks are divided into pages. A page is conceptually an indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and the default is 1 MiB.
  final int? pageSizeBytes;

  /// Indicates the version of row format to output. The possible values are `V1` and `V2`. The default is `V1`.
  final String? writerVersion;

  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe({
    this.blockSizeBytes,
    this.compression,
    this.enableDictionaryCompression,
    this.maxPaddingBytes,
    this.pageSizeBytes,
    this.writerVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockSizeBytesValue = blockSizeBytes;
    if (blockSizeBytesValue != null) {
      map['blockSizeBytes'] = blockSizeBytesValue;
    }
    final compressionValue = compression;
    if (compressionValue != null) {
      map['compression'] = compressionValue;
    }
    final enableDictionaryCompressionValue = enableDictionaryCompression;
    if (enableDictionaryCompressionValue != null) {
      map['enableDictionaryCompression'] = enableDictionaryCompressionValue;
    }
    final maxPaddingBytesValue = maxPaddingBytes;
    if (maxPaddingBytesValue != null) {
      map['maxPaddingBytes'] = maxPaddingBytesValue;
    }
    final pageSizeBytesValue = pageSizeBytes;
    if (pageSizeBytesValue != null) {
      map['pageSizeBytes'] = pageSizeBytesValue;
    }
    final writerVersionValue = writerVersion;
    if (writerVersionValue != null) {
      map['writerVersion'] = writerVersionValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe(
      blockSizeBytes:
          map['blockSizeBytes'] == null ? null : map['blockSizeBytes'] as int,
      compression:
          map['compression'] == null ? null : map['compression'] as String,
      enableDictionaryCompression: map['enableDictionaryCompression'] == null
          ? null
          : map['enableDictionaryCompression'] as bool,
      maxPaddingBytes:
          map['maxPaddingBytes'] == null ? null : map['maxPaddingBytes'] as int,
      pageSizeBytes:
          map['pageSizeBytes'] == null ? null : map['pageSizeBytes'] as int,
      writerVersion:
          map['writerVersion'] == null ? null : map['writerVersion'] as String,
    );
  }
}
