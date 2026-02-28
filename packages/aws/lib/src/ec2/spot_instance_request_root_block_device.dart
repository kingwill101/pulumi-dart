// ignore_for_file: unused_element, unnecessary_cast


class SpotInstanceRequestRootBlockDevice {
  /// Whether the volume should be destroyed on instance termination. Defaults to `true`.
  final bool? deleteOnTermination;
  final String? deviceName;
  /// Whether to enable volume encryption. Defaults to `false`. Must be configured to perform drift detection.
  final bool? encrypted;
  /// Amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). Only valid for volume_type of `io1`, `io2` or `gp3`.
  final int? iops;
  /// Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.
  final String? kmsKeyId;
  /// Map of tags to assign to the device. **Note:** Tags specified here are applied after instance creation via a separate API call. This means they cannot be used with IAM policies that require tags during resource creation (e.g., ABAC policies with `ec2:CreateAction` conditions or SCPs requiring volume tags). For ABAC compliance, use `volume_tags` instead, which applies uniform tags to all volumes during instance creation.
  final Map<String, String>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final Map<String, String>? tagsAll;
  /// Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for `volume_type` of `gp3`.
  final int? throughput;
  final String? volumeId;
  /// Size of the volume in gibibytes (GiB).
  final int? volumeSize;
  /// Type of volume. Valid values include `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1`, or `st1`. Defaults to the volume type that the AMI uses.
  ///
  /// Modifying the `encrypted` or `kms_key_id` settings of the `root_block_device` requires resource replacement.
  final String? volumeType;

  /// Creates a new [SpotInstanceRequestRootBlockDevice].
  /// [deleteOnTermination] Whether the volume should be destroyed on instance termination. Defaults to `true`.
  /// [deviceName] Optional.
  /// [encrypted] Whether to enable volume encryption. Defaults to `false`. Must be configured to perform drift detection.
  /// [iops] Amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). Only valid for volume_type of `io1`, `io2` or `gp3`.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.
  /// [tags] Map of tags to assign to the device. **Note:** Tags specified here are applied after instance creation via a separate API call. This means they cannot be used with IAM policies that require tags during resource creation (e.g., ABAC policies with `ec2:CreateAction` conditions or SCPs requiring volume tags). For ABAC compliance, use `volume_tags` instead, which applies uniform tags to all volumes during instance creation.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throughput] Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for `volume_type` of `gp3`.
  /// [volumeId] Optional.
  /// [volumeSize] Size of the volume in gibibytes (GiB).
  /// [volumeType] Type of volume. Valid values include `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1`, or `st1`. Defaults to the volume type that the AMI uses.
  SpotInstanceRequestRootBlockDevice({
    this.deleteOnTermination,
    this.deviceName,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.tags,
    this.tagsAll,
    this.throughput,
    this.volumeId,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'deviceName': ?deviceName,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'throughput': ?throughput,
      'volumeId': ?volumeId,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory SpotInstanceRequestRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tagsAll: map['tagsAll'] == null ? null : (map['tagsAll'] as Map).cast<String, String>(),
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as String,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType: map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}

