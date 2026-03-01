// ignore_for_file: unused_element, unnecessary_cast

import 'volume_type_enum_value_response.dart';

/// Definition of EBSOptions
class EBSOptionsResponse {
  /// <p>Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service domain.</p>
  final bool? ebsEnabled;
  /// <p>Specifies the baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> and provisioned IOPS EBS volume types.</p>
  final int? iops;
  /// <p>Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> volume type.</p>
  final int? throughput;
  /// <p>Specifies the size (in GiB) of EBS volumes attached to data nodes.</p>
  final int? volumeSize;
  /// <p>Specifies the type of EBS volumes attached to data nodes.</p>
  final VolumeTypeEnumValueResponse? volumeType;

  /// Creates a new [EBSOptionsResponse].
  /// [ebsEnabled] <p>Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service domain.</p>
  /// [iops] <p>Specifies the baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> and provisioned IOPS EBS volume types.</p>
  /// [throughput] <p>Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the <code>gp3</code> volume type.</p>
  /// [volumeSize] <p>Specifies the size (in GiB) of EBS volumes attached to data nodes.</p>
  /// [volumeType] <p>Specifies the type of EBS volumes attached to data nodes.</p>
  EBSOptionsResponse({
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
      'volumeType': ?volumeType == null ? null : volumeType!.toMap(),
    };
  }

  factory EBSOptionsResponse.fromMap(Map<String, dynamic> map) {
    return EBSOptionsResponse(
      ebsEnabled: map['ebsEnabled'] == null ? null : map['ebsEnabled'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType: map['volumeType'] == null ? null : VolumeTypeEnumValueResponse.fromMap((map['volumeType'] as Map).cast<String, dynamic>()),
    );
  }
}

