// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getComponent.
class GetComponentResult {
  final String? arn;
  /// Change description of the component.
  final String? changeDescription;
  /// Data of the component.
  final String? data;
  /// Date the component was created.
  final String? dateCreated;
  /// Description of the component.
  final String? description;
  /// Encryption status of the component.
  final bool? encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the KMS Key used to encrypt the component.
  final String? kmsKeyId;
  /// Name of the component.
  final String? name;
  /// Owner of the component.
  final String? owner;
  /// Platform of the component.
  final String? platform;
  final String? region;
  /// Operating Systems (OSes) supported by the component.
  final List<String>? supportedOsVersions;
  /// Key-value map of resource tags for the component.
  final Map<String, String>? tags;
  /// Type of the component.
  final String? type;
  /// Version of the component.
  final String? version;

  /// Creates a new [GetComponentResult].
  /// [arn] Optional.
  /// [changeDescription] Change description of the component.
  /// [data] Data of the component.
  /// [dateCreated] Date the component was created.
  /// [description] Description of the component.
  /// [encrypted] Encryption status of the component.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN of the KMS Key used to encrypt the component.
  /// [name] Name of the component.
  /// [owner] Owner of the component.
  /// [platform] Platform of the component.
  /// [region] Optional.
  /// [supportedOsVersions] Operating Systems (OSes) supported by the component.
  /// [tags] Key-value map of resource tags for the component.
  /// [type] Type of the component.
  /// [version] Version of the component.
  const GetComponentResult({
    this.arn,
    this.changeDescription,
    this.data,
    this.dateCreated,
    this.description,
    this.encrypted,
    this.id,
    this.kmsKeyId,
    this.name,
    this.owner,
    this.platform,
    this.region,
    this.supportedOsVersions,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'changeDescription': ?changeDescription,
      'data': ?data,
      'dateCreated': ?dateCreated,
      'description': ?description,
      'encrypted': ?encrypted,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'owner': ?owner,
      'platform': ?platform,
      'region': ?region,
      'supportedOsVersions': ?supportedOsVersions,
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetComponentResult.fromMap(Map<String, dynamic> map) {
    return GetComponentResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changeDescription: (() { final guardedValue = map['changeDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedOsVersions: (() { final guardedValue = map['supportedOsVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
