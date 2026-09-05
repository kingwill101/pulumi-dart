// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpcLink.
class GetVpcLinkResult {
  /// ARN of the VPC Link.
  final String? arn;
  /// Description of the VPC link.
  final String? description;
  /// Set to the ID of the found API Gateway VPC Link.
  final String? id;
  final String? name;
  final String? region;
  /// Status of the VPC link.
  final String? status;
  /// Status message of the VPC link.
  final String? statusMessage;
  /// Key-value map of resource tags
  final Map<String, String>? tags;
  /// List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  final List<String>? targetArns;

  /// Creates a new [GetVpcLinkResult].
  /// [arn] ARN of the VPC Link.
  /// [description] Description of the VPC link.
  /// [id] Set to the ID of the found API Gateway VPC Link.
  /// [name] Optional.
  /// [region] Optional.
  /// [status] Status of the VPC link.
  /// [statusMessage] Status message of the VPC link.
  /// [tags] Key-value map of resource tags
  /// [targetArns] List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  const GetVpcLinkResult({
    this.arn,
    this.description,
    this.id,
    this.name,
    this.region,
    this.status,
    this.statusMessage,
    this.tags,
    this.targetArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
      'targetArns': ?targetArns,
    };
  }

  factory GetVpcLinkResult.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetArns: (() { final guardedValue = map['targetArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
