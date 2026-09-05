// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGlobalNetwork.
class GetGlobalNetworkResult {
  /// ARN of the global network.
  final String? arn;
  /// Description of the global network.
  final String? description;
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Map of resource tags.
  final Map<String, String>? tags;

  /// Creates a new [GetGlobalNetworkResult].
  /// [arn] ARN of the global network.
  /// [description] Description of the global network.
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [tags] Map of resource tags.
  const GetGlobalNetworkResult({
    this.arn,
    this.description,
    this.globalNetworkId,
    this.id,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'tags': ?tags,
    };
  }

  factory GetGlobalNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
