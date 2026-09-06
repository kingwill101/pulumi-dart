// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkExperimentProfile.
class GetNetworkExperimentProfileResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The state of the Experiment
  final String? enabledState;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Resource status.
  final String? resourceState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetNetworkExperimentProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enabledState] The state of the Experiment
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetNetworkExperimentProfileResult({
    this.azureApiVersion,
    this.enabledState,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.resourceState,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'enabledState': ?enabledState,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceState': ?resourceState,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNetworkExperimentProfileResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkExperimentProfileResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
