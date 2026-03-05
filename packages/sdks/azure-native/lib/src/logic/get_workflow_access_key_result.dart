// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkflowAccessKey.
class GetWorkflowAccessKeyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the resource id.
  final String? id;
  /// Gets the workflow access key name.
  final String name;
  /// Gets or sets the not-after time.
  final String? notAfter;
  /// Gets or sets the not-before time.
  final String? notBefore;
  /// Gets the workflow access key type.
  final String type;

  /// Creates a new [GetWorkflowAccessKeyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the resource id.
  /// [name] Gets the workflow access key name.
  /// [notAfter] Gets or sets the not-after time.
  /// [notBefore] Gets or sets the not-before time.
  /// [type] Gets the workflow access key type.
  GetWorkflowAccessKeyResult({
    required this.azureApiVersion,
    this.id,
    required this.name,
    this.notAfter,
    this.notBefore,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': ?id,
      'name': name,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'type': type,
    };
  }

  factory GetWorkflowAccessKeyResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowAccessKeyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

