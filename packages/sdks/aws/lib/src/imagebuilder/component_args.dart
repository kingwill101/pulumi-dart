// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imagebuilder_component_component_args_doc}
/// The set of arguments for Component.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_component_component_args_doc}
class ComponentArgs {
  /// Change description of the component.
  final pulumi.Input<String>? changeDescription;
  /// Inline YAML string with data of the component. Exactly one of `data` and `uri` can be specified. the provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String>? data;
  /// Description of the component.
  final pulumi.Input<String>? description;
  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component.
  final pulumi.Input<String>? kmsKeyId;
  /// Name of the component.
  final pulumi.Input<String>? name;
  /// Platform of the component.
  final pulumi.Input<String> platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to `false`.
  final pulumi.Input<bool>? skipDestroy;
  /// Set of Operating Systems (OS) supported by the component.
  final pulumi.Input<List<String>>? supportedOsVersions;
  /// Key-value map of resource tags for the component. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// S3 URI with data of the component. Exactly one of `data` and `uri` can be specified.
  ///
  /// > **NOTE:** Updating `data` or `uri` requires specifying a new `version`. This causes replacement of the resource. The `skip_destroy` argument can be used to retain the old version.
  final pulumi.Input<String>? uri;
  /// Version of the component.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> version;

  /// Creates a new [ComponentArgs].
  /// [changeDescription] Change description of the component.
  /// [data] Inline YAML string with data of the component. Exactly one of `data` and `uri` can be specified. the provider will only perform drift detection of its value when present in a configuration.
  /// [description] Description of the component.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component.
  /// [name] Name of the component.
  /// [platform] Platform of the component.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to `false`.
  /// [supportedOsVersions] Set of Operating Systems (OS) supported by the component.
  /// [tags] Key-value map of resource tags for the component. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [uri] S3 URI with data of the component. Exactly one of `data` and `uri` can be specified.
  /// [version] Version of the component.
  ComponentArgs({
    pulumi.Output<String>? changeDescription,
    pulumi.Output<String>? data,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> platform,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<List<String>>? supportedOsVersions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? uri,
    required pulumi.Output<String> version,
  }) :
      changeDescription = pulumi.Input.asOptionalInput<String>(changeDescription),
      data = pulumi.Input.asOptionalInput<String>(data),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      platform = pulumi.Input.asInput<String>(platform),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      supportedOsVersions = pulumi.Input.asOptionalInput<List<String>>(supportedOsVersions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeDescription': ?changeDescription,
      'data': ?data,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'platform': platform,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'supportedOsVersions': ?supportedOsVersions,
      'tags': ?tags,
      'uri': ?uri,
      'version': version,
    };
  }

  factory ComponentArgs.fromMap(Map<String, dynamic> map) {
    return ComponentArgs(
      changeDescription: map['changeDescription'] == null ? null : pulumi.Output.create<String>(map['changeDescription'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      platform: pulumi.Output.create<String>(map['platform'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      supportedOsVersions: map['supportedOsVersions'] == null ? null : pulumi.Output.create<List<String>>((map['supportedOsVersions'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

