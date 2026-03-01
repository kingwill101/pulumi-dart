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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? changeDescription,
    pulumi.Output<String>? data,
    pulumi.Output<String>? dateCreated,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<List<String>>? supportedOsVersions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uri,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      changeDescription = pulumi.Input.asOptionalInput<String>(changeDescription),
      data = pulumi.Input.asOptionalInput<String>(data),
      dateCreated = pulumi.Input.asOptionalInput<String>(dateCreated),
      description = pulumi.Input.asOptionalInput<String>(description),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      supportedOsVersions = pulumi.Input.asOptionalInput<List<String>>(supportedOsVersions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      changeDescription: map['changeDescription'] == null ? null : pulumi.Output.create<String>(map['changeDescription'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      dateCreated: map['dateCreated'] == null ? null : pulumi.Output.create<String>(map['dateCreated'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      supportedOsVersions: map['supportedOsVersions'] == null ? null : pulumi.Output.create<List<String>>((map['supportedOsVersions'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

