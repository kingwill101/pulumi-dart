// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVariable.
class GetVariableResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Fully qualified resource Id for the resource
  final String id;
  /// Gets or sets the encrypted flag of the variable.
  final bool? isEncrypted;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String name;
  /// The type of the resource.
  final String type;
  /// Gets or sets the value of the variable.
  final String? value;

  /// Creates a new [GetVariableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [id] Fully qualified resource Id for the resource
  /// [isEncrypted] Gets or sets the encrypted flag of the variable.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [type] The type of the resource.
  /// [value] Gets or sets the value of the variable.
  GetVariableResult({
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    required this.id,
    this.isEncrypted,
    this.lastModifiedTime,
    required this.name,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'id': id,
      'isEncrypted': ?isEncrypted,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'type': type,
      'value': ?value,
    };
  }

  factory GetVariableResult.fromMap(Map<String, dynamic> map) {
    return GetVariableResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isEncrypted: (() { final guardedValue = map['isEncrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      type: map['type'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

