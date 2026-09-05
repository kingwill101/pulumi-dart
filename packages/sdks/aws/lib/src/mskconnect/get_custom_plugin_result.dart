// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomPlugin.
class GetCustomPluginResult {
  /// the ARN of the custom plugin.
  final String? arn;
  /// a summary description of the custom plugin.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// an ID of the latest successfully created revision of the custom plugin.
  final int? latestRevision;
  final String? name;
  final String? region;
  /// the state of the custom plugin.
  final String? state;
  /// A map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetCustomPluginResult].
  /// [arn] the ARN of the custom plugin.
  /// [description] a summary description of the custom plugin.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [latestRevision] an ID of the latest successfully created revision of the custom plugin.
  /// [name] Optional.
  /// [region] Optional.
  /// [state] the state of the custom plugin.
  /// [tags] A map of tags assigned to the resource.
  const GetCustomPluginResult({
    this.arn,
    this.description,
    this.id,
    this.latestRevision,
    this.name,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'latestRevision': ?latestRevision,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetCustomPluginResult.fromMap(Map<String, dynamic> map) {
    return GetCustomPluginResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
