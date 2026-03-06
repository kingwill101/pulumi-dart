// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_type_enum_value_response.dart';

/// Definition of EBSOptions
class EBSOptionsResponse {
  /// &lt;p&gt;Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service domain.&lt;/p&gt;
  final pulumi.Input<bool>? ebsEnabled;
  /// &lt;p&gt;Specifies the baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the &lt;code&gt;gp3&lt;/code&gt; and provisioned IOPS EBS volume types.&lt;/p&gt;
  final pulumi.Input<int>? iops;
  /// &lt;p&gt;Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the &lt;code&gt;gp3&lt;/code&gt; volume type.&lt;/p&gt;
  final pulumi.Input<int>? throughput;
  /// &lt;p&gt;Specifies the size (in GiB) of EBS volumes attached to data nodes.&lt;/p&gt;
  final pulumi.Input<int>? volumeSize;
  /// &lt;p&gt;Specifies the type of EBS volumes attached to data nodes.&lt;/p&gt;
  final pulumi.Input<VolumeTypeEnumValueResponse>? volumeType;

  /// Creates a new [EBSOptionsResponse].
  /// [ebsEnabled] &lt;p&gt;Indicates whether EBS volumes are attached to data nodes in an OpenSearch Service domain.&lt;/p&gt;
  /// [iops] &lt;p&gt;Specifies the baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the &lt;code&gt;gp3&lt;/code&gt; and provisioned IOPS EBS volume types.&lt;/p&gt;
  /// [throughput] &lt;p&gt;Specifies the throughput (in MiB/s) of the EBS volumes attached to data nodes. Applicable only for the &lt;code&gt;gp3&lt;/code&gt; volume type.&lt;/p&gt;
  /// [volumeSize] &lt;p&gt;Specifies the size (in GiB) of EBS volumes attached to data nodes.&lt;/p&gt;
  /// [volumeType] &lt;p&gt;Specifies the type of EBS volumes attached to data nodes.&lt;/p&gt;
  const EBSOptionsResponse({
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
      'volumeType': ?pulumi.Input.mapOptionalInputValue<VolumeTypeEnumValueResponse, Map<String, dynamic>>(volumeType, (value) => value.toMap()),
    };
  }

  factory EBSOptionsResponse.fromMap(Map<String, dynamic> map) {
    return EBSOptionsResponse(
      ebsEnabled: (() { final guardedValue = map['ebsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

