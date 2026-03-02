// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_type_enum_value.dart';

/// Definition of EBSOptions
class EBSOptions {
  /// <p>Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service domain.</p>
  final pulumi.Input<bool>? ebsEnabled;
  /// <p>Specifies the baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> and provisioned IOPS EBS volume types.</p>
  final pulumi.Input<int>? iops;
  /// <p>Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> volume type.</p>
  final pulumi.Input<int>? throughput;
  /// <p>Specifies the size (in GiB) of EBS volumes attached to data nodes.</p>
  final pulumi.Input<int>? volumeSize;
  /// <p>Specifies the type of EBS volumes attached to data nodes.</p>
  final pulumi.Input<VolumeTypeEnumValue>? volumeType;

  /// Creates a new [EBSOptions].
  /// [ebsEnabled] <p>Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service domain.</p>
  /// [iops] <p>Specifies the baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> and provisioned IOPS EBS volume types.</p>
  /// [throughput] <p>Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> volume type.</p>
  /// [volumeSize] <p>Specifies the size (in GiB) of EBS volumes attached to data nodes.</p>
  /// [volumeType] <p>Specifies the type of EBS volumes attached to data nodes.</p>
  EBSOptions({
    this.ebsEnabled,
    this.iops,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsEnabled': ?ebsEnabled,
      'iops': ?iops,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?pulumi.Input.mapOptionalInputValue<VolumeTypeEnumValue, Map<String, dynamic>>(volumeType, (value) => value.toMap()),
    };
  }

  factory EBSOptions.fromMap(Map<String, dynamic> map) {
    return EBSOptions(
      ebsEnabled: map['ebsEnabled'] == null ? null : (map['ebsEnabled']! as bool).input(),
      iops: map['iops'] == null ? null : (map['iops']! as int).input(),
      throughput: map['throughput'] == null ? null : (map['throughput']! as int).input(),
      volumeSize: map['volumeSize'] == null ? null : (map['volumeSize']! as int).input(),
      volumeType: map['volumeType'] == null ? null : (VolumeTypeEnumValue.fromMap((map['volumeType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

