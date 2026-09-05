// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_input_source_resource_configuration_eks.dart';
import 'v2_input_source_resource_configuration_resource_tag.dart';

class V2InputSourceResourceConfiguration {
  /// CloudFormation stack ARN.
  final pulumi.Input<String?>? cfnStackArn;
  /// S3 URL.
  final pulumi.Input<String?>? designFileS3Url;
  /// EKS configuration. See `eks` Block below.
  final pulumi.Input<V2InputSourceResourceConfigurationEks?>? eks;
  /// Resource tags used for discovery. See `resourceTag` Block below.
  final pulumi.Input<List<V2InputSourceResourceConfigurationResourceTag>?>? resourceTags;
  /// S3 URL.
  final pulumi.Input<String?>? tfStateFileUrl;

  /// Creates a new [V2InputSourceResourceConfiguration].
  /// [cfnStackArn] CloudFormation stack ARN.
  /// [designFileS3Url] S3 URL.
  /// [eks] EKS configuration. See `eks` Block below.
  /// [resourceTags] Resource tags used for discovery. See `resourceTag` Block below.
  /// [tfStateFileUrl] S3 URL.
  const V2InputSourceResourceConfiguration({
    this.cfnStackArn,
    this.designFileS3Url,
    this.eks,
    this.resourceTags,
    this.tfStateFileUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cfnStackArn': ?cfnStackArn,
      'designFileS3Url': ?designFileS3Url,
      'eks': ?pulumi.Input.mapOptionalInputValue<V2InputSourceResourceConfigurationEks, Map<String, dynamic>>(eks, (value) => value.toMap()),
      'resourceTags': ?pulumi.Input.mapOptionalInputValue<List<V2InputSourceResourceConfigurationResourceTag>, List<Map<String, dynamic>>>(resourceTags, (value) => pulumi.Input.encodeList<V2InputSourceResourceConfigurationResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tfStateFileUrl': ?tfStateFileUrl,
    };
  }

  factory V2InputSourceResourceConfiguration.fromMap(Map<String, dynamic> map) {
    return V2InputSourceResourceConfiguration(
      cfnStackArn: (() { final guardedValue = map['cfnStackArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      designFileS3Url: (() { final guardedValue = map['designFileS3Url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eks: (() { final guardedValue = map['eks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2InputSourceResourceConfigurationEks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2InputSourceResourceConfigurationResourceTag>(guardedValue, (value) => V2InputSourceResourceConfigurationResourceTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tfStateFileUrl: (() { final guardedValue = map['tfStateFileUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
