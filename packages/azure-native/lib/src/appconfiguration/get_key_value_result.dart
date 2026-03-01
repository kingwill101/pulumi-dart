// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKeyValue.
class GetKeyValueResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The content type of the key-value's value.
  /// Providing a proper content-type can enable transformations of values when they are retrieved by applications.
  final String? contentType;
  /// An ETag indicating the state of a key-value within a configuration store.
  final String eTag;
  /// The resource ID.
  final String id;
  /// The primary identifier of a key-value.
  /// The key is used in unison with the label to uniquely identify a key-value.
  final String key;
  /// A value used to group key-values.
  /// The label is used in unison with the key to uniquely identify a key-value.
  final String label;
  /// The last time a modifying operation was performed on the given key-value.
  final String lastModified;
  /// A value indicating whether the key-value is locked.
  /// A locked key-value may not be modified until it is unlocked.
  final bool locked;
  /// The name of the resource.
  final String name;
  /// A dictionary of tags that can help identify what a key-value may be applicable for.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
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
  GetKeyValueResult({
    required this.azureApiVersion,
    this.contentType,
    required this.eTag,
    required this.id,
    required this.key,
    required this.label,
    required this.lastModified,
    required this.locked,
    required this.name,
    this.tags,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contentType': ?contentType,
      'eTag': eTag,
      'id': id,
      'key': key,
      'label': label,
      'lastModified': lastModified,
      'locked': locked,
      'name': name,
      'tags': ?tags,
      'type': type,
      'value': ?value,
    };
  }

  factory GetKeyValueResult.fromMap(Map<String, dynamic> map) {
    return GetKeyValueResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      key: map['key'] as String,
      label: map['label'] as String,
      lastModified: map['lastModified'] as String,
      locked: map['locked'] as bool,
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

