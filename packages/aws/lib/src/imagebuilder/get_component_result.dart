// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getComponent.
class GetComponentResult {
  final String arn;

  /// Change description of the component.
  final String changeDescription;

  /// Data of the component.
  final String data;

  /// Date the component was created.
  final String dateCreated;

  /// Description of the component.
  final String description;

  /// Encryption status of the component.
  final bool encrypted;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARN of the Key Management Service (KMS) Key used to encrypt the component.
  final String kmsKeyId;

  /// Name of the component.
  final String name;

  /// Owner of the component.
  final String owner;

  /// Platform of the component.
  final String platform;
  final String region;

  /// Operating Systems (OSes) supported by the component.
  final List<String> supportedOsVersions;

  /// Key-value map of resource tags for the component.
  final Map<String, String> tags;

  /// Type of the component.
  final String type;

  /// Version of the component.
  final String version;

  /// Creates a new [GetComponentResult].
  /// [arn] Required.
  /// [changeDescription] Change description of the component.
  /// [data] Data of the component.
  /// [dateCreated] Date the component was created.
  /// [description] Description of the component.
  /// [encrypted] Encryption status of the component.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN of the Key Management Service (KMS) Key used to encrypt the component.
  /// [name] Name of the component.
  /// [owner] Owner of the component.
  /// [platform] Platform of the component.
  /// [region] Required.
  /// [supportedOsVersions] Operating Systems (OSes) supported by the component.
  /// [tags] Key-value map of resource tags for the component.
  /// [type] Type of the component.
  /// [version] Version of the component.
  GetComponentResult({
    required this.arn,
    required this.changeDescription,
    required this.data,
    required this.dateCreated,
    required this.description,
    required this.encrypted,
    required this.id,
    required this.kmsKeyId,
    required this.name,
    required this.owner,
    required this.platform,
    required this.region,
    required this.supportedOsVersions,
    required this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'changeDescription': changeDescription,
      'data': data,
      'dateCreated': dateCreated,
      'description': description,
      'encrypted': encrypted,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'name': name,
      'owner': owner,
      'platform': platform,
      'region': region,
      'supportedOsVersions': supportedOsVersions,
      'tags': tags,
      'type': type,
      'version': version,
    };
  }

  factory GetComponentResult.fromMap(Map<String, dynamic> map) {
    return GetComponentResult(
      arn: map['arn'] as String,
      changeDescription: map['changeDescription'] as String,
      data: map['data'] as String,
      dateCreated: map['dateCreated'] as String,
      description: map['description'] as String,
      encrypted: map['encrypted'] as bool,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      platform: map['platform'] as String,
      region: map['region'] as String,
      supportedOsVersions: (map['supportedOsVersions'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}
