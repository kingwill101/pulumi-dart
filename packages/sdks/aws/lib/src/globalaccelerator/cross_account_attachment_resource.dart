// ignore_for_file: unused_element, unnecessary_cast


class CrossAccountAttachmentResource {
  /// IP address range, in CIDR format, that is specified as resource.
  final String? cidrBlock;
  /// The endpoint ID for the endpoint that is specified as a AWS resource.
  final String? endpointId;
  /// The AWS Region where a shared endpoint resource is located.
  final String? region;

  /// Creates a new [CrossAccountAttachmentResource].
  /// [cidrBlock] IP address range, in CIDR format, that is specified as resource.
  /// [endpointId] The endpoint ID for the endpoint that is specified as a AWS resource.
  /// [region] The AWS Region where a shared endpoint resource is located.
  CrossAccountAttachmentResource({
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
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      endpointId: map['endpointId'] == null ? null : map['endpointId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

