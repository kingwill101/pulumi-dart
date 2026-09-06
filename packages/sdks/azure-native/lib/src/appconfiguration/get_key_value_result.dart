// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeyValue.
class GetKeyValueResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The content type of the key-value's value.
  /// Providing a proper content-type can enable transformations of values when they are retrieved by applications.
  final String? contentType;
  /// An ETag indicating the state of a key-value within a configuration store.
  final String? eTag;
  /// The resource ID.
  final String? id;
  /// The primary identifier of a key-value.
  /// The key is used in unison with the label to uniquely identify a key-value.
  final String? key;
  /// A value used to group key-values.
  /// The label is used in unison with the key to uniquely identify a key-value.
  final String? label;
  /// The last time a modifying operation was performed on the given key-value.
  final String? lastModified;
  /// A value indicating whether the key-value is locked.
  /// A locked key-value may not be modified until it is unlocked.
  final bool? locked;
  /// The name of the resource.
  final String? name;
  /// A dictionary of tags that can help identify what a key-value may be applicable for.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String? type;
  /// The value of the key-value.
  final String? value;

  /// Creates a new [GetKeyValueResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentType] The content type of the key-value's value.
  /// [eTag] An ETag indicating the state of a key-value within a configuration store.
  /// [id] The resource ID.
  /// [key] The primary identifier of a key-value.
  /// [label] A value used to group key-values.
  /// [lastModified] The last time a modifying operation was performed on the given key-value.
  /// [locked] A value indicating whether the key-value is locked.
  /// [name] The name of the resource.
  /// [tags] A dictionary of tags that can help identify what a key-value may be applicable for.
  /// [type] The type of the resource.
  /// [value] The value of the key-value.
  const GetKeyValueResult({
    this.azureApiVersion,
    this.contentType,
    this.eTag,
    this.id,
    this.key,
    this.label,
    this.lastModified,
    this.locked,
    this.name,
    this.tags,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'contentType': ?contentType,
      'eTag': ?eTag,
      'id': ?id,
      'key': ?key,
      'label': ?label,
      'lastModified': ?lastModified,
      'locked': ?locked,
      'name': ?name,
      'tags': ?tags,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GetKeyValueResult.fromMap(Map<String, dynamic> map) {
    return GetKeyValueResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
