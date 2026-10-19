// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrossAccountAttachmentResource {
  /// IP address range, in CIDR format, that is specified as resource.
  final pulumi.Input<String?>? cidrBlock;
  /// Endpoint ID for the endpoint that is specified as a AWS resource.
  final pulumi.Input<String?>? endpointId;
  /// AWS Region where a shared endpoint resource is located.
  final pulumi.Input<String?>? region;

  /// Creates a new [CrossAccountAttachmentResource].
  /// [cidrBlock] IP address range, in CIDR format, that is specified as resource.
  /// [endpointId] Endpoint ID for the endpoint that is specified as a AWS resource.
  /// [region] AWS Region where a shared endpoint resource is located.
  const CrossAccountAttachmentResource({
    this.cidrBlock,
    this.endpointId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'endpointId': ?endpointId,
      'region': ?region,
    };
  }

  factory CrossAccountAttachmentResource.fromMap(Map<String, dynamic> map) {
    return CrossAccountAttachmentResource(
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
