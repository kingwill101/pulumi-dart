// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsNamespace.
class GetDnsNamespaceResult {
  /// ARN of the namespace.
  final String? arn;
  /// Description of the namespace.
  final String? description;
  /// ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  final String? hostedZone;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Map of tags for the resource.
  final Map<String, String>? tags;
  final String? type;

  /// Creates a new [GetDnsNamespaceResult].
  /// [arn] ARN of the namespace.
  /// [description] Description of the namespace.
  /// [hostedZone] ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Map of tags for the resource.
  /// [type] Optional.
  const GetDnsNamespaceResult({
    this.arn,
    this.description,
    this.hostedZone,
    this.id,
    this.name,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'hostedZone': ?hostedZone,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDnsNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetDnsNamespaceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostedZone: (() { final guardedValue = map['hostedZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
