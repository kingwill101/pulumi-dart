// ignore_for_file: unused_element, unnecessary_cast

class CrossAccountAttachmentResource {
  /// IP address range, in CIDR format, that is specified as resource.
  final String? cidrBlock;

  /// The endpoint ID for the endpoint that is specified as a AWS resource.
  final String? endpointId;

  /// The AWS Region where a shared endpoint resource is located.
  final String? region;

  CrossAccountAttachmentResource({
    this.cidrBlock,
    this.endpointId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final endpointIdValue = endpointId;
    if (endpointIdValue != null) {
      map['endpointId'] = endpointIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CrossAccountAttachmentResource.fromMap(Map<String, dynamic> map) {
    return CrossAccountAttachmentResource(
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      endpointId:
          map['endpointId'] == null ? null : map['endpointId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
