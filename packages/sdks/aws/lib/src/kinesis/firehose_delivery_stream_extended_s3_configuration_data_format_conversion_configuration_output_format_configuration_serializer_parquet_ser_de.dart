// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe {
  /// The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
  final pulumi.Input<int>? blockSizeBytes;
  /// The compression code to use over data blocks. The possible values are `UNCOMPRESSED`, `SNAPPY`, and `GZIP`, with the default being `SNAPPY`. Use `SNAPPY` for higher decompression speed. Use `GZIP` if the compression ratio is more important than speed.
  final pulumi.Input<String>? compression;
  /// Indicates whether to enable dictionary compression.
  final pulumi.Input<bool>? enableDictionaryCompression;
  /// The maximum amount of padding to apply. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is `0`.
  final pulumi.Input<int>? maxPaddingBytes;
  /// The Parquet page size. Column chunks are divided into pages. A page is conceptually an indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and the default is 1 MiB.
  final pulumi.Input<int>? pageSizeBytes;
  /// Indicates the version of row format to output. The possible values are `V1` and `V2`. The default is `V1`.
  final pulumi.Input<String>? writerVersion;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe].
  /// [blockSizeBytes] The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
  /// [compression] The compression code to use over data blocks. The possible values are `UNCOMPRESSED`, `SNAPPY`, and `GZIP`, with the default being `SNAPPY`. Use `SNAPPY` for higher decompression speed. Use `GZIP` if the compression ratio is more important than speed.
  /// [enableDictionaryCompression] Indicates whether to enable dictionary compression.
  /// [maxPaddingBytes] The maximum amount of padding to apply. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is `0`.
  /// [pageSizeBytes] The Parquet page size. Column chunks are divided into pages. A page is conceptually an indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and the default is 1 MiB.
  /// [writerVersion] Indicates the version of row format to output. The possible values are `V1` and `V2`. The default is `V1`.
  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe({
    this.blockSizeBytes,
    this.compression,
    this.enableDictionaryCompression,
    this.maxPaddingBytes,
    this.pageSizeBytes,
    this.writerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockSizeBytes': ?blockSizeBytes,
      'compression': ?compression,
      'enableDictionaryCompression': ?enableDictionaryCompression,
      'maxPaddingBytes': ?maxPaddingBytes,
      'pageSizeBytes': ?pageSizeBytes,
      'writerVersion': ?writerVersion,
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe(
      blockSizeBytes: map['blockSizeBytes'] == null ? null : (map['blockSizeBytes'] as int).input(),
      compression: map['compression'] == null ? null : (map['compression'] as String).input(),
      enableDictionaryCompression: map['enableDictionaryCompression'] == null ? null : (map['enableDictionaryCompression'] as bool).input(),
      maxPaddingBytes: map['maxPaddingBytes'] == null ? null : (map['maxPaddingBytes'] as int).input(),
      pageSizeBytes: map['pageSizeBytes'] == null ? null : (map['pageSizeBytes'] as int).input(),
      writerVersion: map['writerVersion'] == null ? null : (map['writerVersion'] as String).input(),
    );
  }
}

