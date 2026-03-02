// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Component resources.
class ComponentState {
  /// (Required) Amazon Resource Name (ARN) of the component.
  final pulumi.Input<String>? arn;
  /// Change description of the component.
  final pulumi.Input<String>? changeDescription;
  /// Inline YAML string with data of the component. Exactly one of `data` and `uri` can be specified. the provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String>? data;
  /// Date the component was created.
  final pulumi.Input<String>? dateCreated;
  /// Description of the component.
  final pulumi.Input<String>? description;
  /// Encryption status of the component.
  final pulumi.Input<bool>? encrypted;
  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component.
  final pulumi.Input<String>? kmsKeyId;
  /// Name of the component.
  final pulumi.Input<String>? name;
  /// Owner of the component.
  final pulumi.Input<String>? owner;
  /// Platform of the component.
  final pulumi.Input<String>? platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to `false`.
  final pulumi.Input<bool>? skipDestroy;
  /// Set of Operating Systems (OS) supported by the component.
  final pulumi.Input<List<String>>? supportedOsVersions;
  /// Key-value map of resource tags for the component. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of the component.
  final pulumi.Input<String>? type;
  /// S3 URI with data of the component. Exactly one of `data` and `uri` can be specified.
  ///
  /// > **NOTE:** Updating `data` or `uri` requires specifying a new `version`. This causes replacement of the resource. The `skip_destroy` argument can be used to retain the old version.
  final pulumi.Input<String>? uri;
  /// Version of the component.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? version;

  /// Creates a new [ComponentState].
  /// [arn] (Required) Amazon Resource Name (ARN) of the component.
  /// [changeDescription] Change description of the component.
  /// [data] Inline YAML string with data of the component. Exactly one of `data` and `uri` can be specified. the provider will only perform drift detection of its value when present in a configuration.
  /// [dateCreated] Date the component was created.
  /// [description] Description of the component.
  /// [encrypted] Encryption status of the component.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component.
  /// [name] Name of the component.
  /// [owner] Owner of the component.
  /// [platform] Platform of the component.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to `false`.
  /// [supportedOsVersions] Set of Operating Systems (OS) supported by the component.
  /// [tags] Key-value map of resource tags for the component. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of the component.
  /// [uri] S3 URI with data of the component. Exactly one of `data` and `uri` can be specified.
  /// [version] Version of the component.
  ComponentState({
    this.arn,
    this.changeDescription,
    this.data,
    this.dateCreated,
    this.description,
    this.encrypted,
    this.kmsKeyId,
    this.name,
    this.owner,
    this.platform,
    this.region,
    this.skipDestroy,
    this.supportedOsVersions,
    this.tags,
    this.tagsAll,
    this.type,
    this.uri,
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
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'owner': ?owner,
      'platform': ?platform,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'supportedOsVersions': ?supportedOsVersions,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'uri': ?uri,
      'version': ?version,
    };
  }

  factory ComponentState.fromMap(Map<String, dynamic> map) {
    return ComponentState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      changeDescription: map['changeDescription'] == null ? null : (map['changeDescription'] as String).input(),
      data: map['data'] == null ? null : (map['data'] as String).input(),
      dateCreated: map['dateCreated'] == null ? null : (map['dateCreated'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      skipDestroy: map['skipDestroy'] == null ? null : (map['skipDestroy'] as bool).input(),
      supportedOsVersions: map['supportedOsVersions'] == null ? null : ((map['supportedOsVersions'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

