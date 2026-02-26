// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe {
  /// The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
  final int? blockSizeBytes;

  /// A list of column names for which you want Kinesis Data Firehose to create bloom filters.
  final List<String>? bloomFilterColumns;

  /// The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is `0.05`, the minimum is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, and the maximum is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final double? bloomFilterFalsePositiveProbability;

  /// The compression code to use over data blocks. The default is `SNAPPY`.
  final String? compression;

  /// A float that represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final double? dictionaryKeyThreshold;

  /// Set this to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enablePadding;

  /// The version of the file to write. The possible values are `V0_11` and `V0_12`. The default is `V0_12`.
  final String? formatVersion;

  /// A float between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is `0.05`, which means 5 percent of stripe size. For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task. Kinesis Data Firehose ignores this parameter when <span pulumi-lang-nodejs="`enablePadding`" pulumi-lang-dotnet="`EnablePadding`" pulumi-lang-go="`enablePadding`" pulumi-lang-python="`enable_padding`" pulumi-lang-yaml="`enablePadding`" pulumi-lang-java="`enablePadding`">`enable_padding`</span> is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final double? paddingTolerance;

  /// The number of rows between index entries. The default is <span pulumi-lang-nodejs="`10000`" pulumi-lang-dotnet="`10000`" pulumi-lang-go="`10000`" pulumi-lang-python="`10000`" pulumi-lang-yaml="`10000`" pulumi-lang-java="`10000`">`10000`</span> and the minimum is <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>.
  final int? rowIndexStride;

  /// The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.
  final int? stripeSizeBytes;

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
