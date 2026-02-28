// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getVpcLink.
class GetVpcLinkResult {
  final String arn;

  /// Description of the VPC link.
  final String description;

  /// Set to the ID of the found API Gateway VPC Link.
  final String id;
  final String name;
  final String region;

  /// Status of the VPC link.
  final String status;

  /// Status message of the VPC link.
  final String statusMessage;

  /// Key-value map of resource tags
  final Map<String, String> tags;

  /// List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  final List<String> targetArns;

  /// Creates a new [GetVpcLinkResult].
  /// [arn] Required.
  /// [description] Description of the VPC link.
  /// [id] Set to the ID of the found API Gateway VPC Link.
  /// [name] Required.
  /// [region] Required.
  /// [status] Status of the VPC link.
  /// [statusMessage] Status message of the VPC link.
  /// [tags] Key-value map of resource tags
  /// [targetArns] List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  GetVpcLinkResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.status,
    required this.statusMessage,
    required this.tags,
    required this.targetArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    map['tags'] = tags;
    map['targetArns'] = targetArns;
    return map;
  }

  factory GetVpcLinkResult.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetArns: (map['targetArns'] as List).cast<String>(),
    );
  }
}
