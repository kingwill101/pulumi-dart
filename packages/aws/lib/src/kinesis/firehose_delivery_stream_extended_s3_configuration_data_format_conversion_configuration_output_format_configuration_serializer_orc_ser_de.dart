// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe {
  /// The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
  final int? blockSizeBytes;

  /// A list of column names for which you want Kinesis Data Firehose to create bloom filters.
  final List<String>? bloomFilterColumns;

  /// The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is `0.05`, the minimum is `0`, and the maximum is `1`.
  final double? bloomFilterFalsePositiveProbability;

  /// The compression code to use over data blocks. The default is `SNAPPY`.
  final String? compression;

  /// A float that represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to `1`.
  final double? dictionaryKeyThreshold;

  /// Set this to `true` to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is `false`.
  final bool? enablePadding;

  /// The version of the file to write. The possible values are `V0_11` and `V0_12`. The default is `V0_12`.
  final String? formatVersion;

  /// A float between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is `0.05`, which means 5 percent of stripe size. For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task. Kinesis Data Firehose ignores this parameter when `enable_padding` is `false`.
  final double? paddingTolerance;

  /// The number of rows between index entries. The default is `10000` and the minimum is `1000`.
  final int? rowIndexStride;

  /// The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.
  final int? stripeSizeBytes;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe].
  /// [blockSizeBytes] The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
  /// [bloomFilterColumns] A list of column names for which you want Kinesis Data Firehose to create bloom filters.
  /// [bloomFilterFalsePositiveProbability] The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is `0.05`, the minimum is `0`, and the maximum is `1`.
  /// [compression] The compression code to use over data blocks. The default is `SNAPPY`.
  /// [dictionaryKeyThreshold] A float that represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to `1`.
  /// [enablePadding] Set this to `true` to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is `false`.
  /// [formatVersion] The version of the file to write. The possible values are `V0_11` and `V0_12`. The default is `V0_12`.
  /// [paddingTolerance] A float between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is `0.05`, which means 5 percent of stripe size. For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task. Kinesis Data Firehose ignores this parameter when `enable_padding` is `false`.
  /// [rowIndexStride] The number of rows between index entries. The default is `10000` and the minimum is `1000`.
  /// [stripeSizeBytes] The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.
  FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe({
    this.blockSizeBytes,
    this.bloomFilterColumns,
    this.bloomFilterFalsePositiveProbability,
    this.compression,
    this.dictionaryKeyThreshold,
    this.enablePadding,
    this.formatVersion,
    this.paddingTolerance,
    this.rowIndexStride,
    this.stripeSizeBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockSizeBytesValue = blockSizeBytes;
    if (blockSizeBytesValue != null) {
      map['blockSizeBytes'] = blockSizeBytesValue;
    }
    final bloomFilterColumnsValue = bloomFilterColumns;
    if (bloomFilterColumnsValue != null) {
      map['bloomFilterColumns'] = bloomFilterColumnsValue;
    }
    final bloomFilterFalsePositiveProbabilityValue =
        bloomFilterFalsePositiveProbability;
    if (bloomFilterFalsePositiveProbabilityValue != null) {
      map['bloomFilterFalsePositiveProbability'] =
          bloomFilterFalsePositiveProbabilityValue;
    }
    final compressionValue = compression;
    if (compressionValue != null) {
      map['compression'] = compressionValue;
    }
    final dictionaryKeyThresholdValue = dictionaryKeyThreshold;
    if (dictionaryKeyThresholdValue != null) {
      map['dictionaryKeyThreshold'] = dictionaryKeyThresholdValue;
    }
    final enablePaddingValue = enablePadding;
    if (enablePaddingValue != null) {
      map['enablePadding'] = enablePaddingValue;
    }
    final formatVersionValue = formatVersion;
    if (formatVersionValue != null) {
      map['formatVersion'] = formatVersionValue;
    }
    final paddingToleranceValue = paddingTolerance;
    if (paddingToleranceValue != null) {
      map['paddingTolerance'] = paddingToleranceValue;
    }
    final rowIndexStrideValue = rowIndexStride;
    if (rowIndexStrideValue != null) {
      map['rowIndexStride'] = rowIndexStrideValue;
    }
    final stripeSizeBytesValue = stripeSizeBytes;
    if (stripeSizeBytesValue != null) {
      map['stripeSizeBytes'] = stripeSizeBytesValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe(
      blockSizeBytes:
          map['blockSizeBytes'] == null ? null : map['blockSizeBytes'] as int,
      bloomFilterColumns: map['bloomFilterColumns'] == null
          ? null
          : (map['bloomFilterColumns'] as List).cast<String>(),
      bloomFilterFalsePositiveProbability:
          map['bloomFilterFalsePositiveProbability'] == null
              ? null
              : map['bloomFilterFalsePositiveProbability'] as double,
      compression:
          map['compression'] == null ? null : map['compression'] as String,
      dictionaryKeyThreshold: map['dictionaryKeyThreshold'] == null
          ? null
          : map['dictionaryKeyThreshold'] as double,
      enablePadding:
          map['enablePadding'] == null ? null : map['enablePadding'] as bool,
      formatVersion:
          map['formatVersion'] == null ? null : map['formatVersion'] as String,
      paddingTolerance: map['paddingTolerance'] == null
          ? null
          : map['paddingTolerance'] as double,
      rowIndexStride:
          map['rowIndexStride'] == null ? null : map['rowIndexStride'] as int,
      stripeSizeBytes:
          map['stripeSizeBytes'] == null ? null : map['stripeSizeBytes'] as int,
    );
  }
}
