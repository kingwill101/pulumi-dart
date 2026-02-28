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
    String? changeDescription,
    String? data,
    String? description,
    String? kmsKeyId,
    String? name,
    required String platform,
    String? region,
    bool? skipDestroy,
    List<String>? supportedOsVersions,
    Map<String, String>? tags,
    String? uri,
    required String version,
  })  : changeDescription =
            pulumi.Input.asOptionalInput<String>(changeDescription),
        data = pulumi.Input.asOptionalInput<String>(data),
        description = pulumi.Input.asOptionalInput<String>(description),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        name = pulumi.Input.asOptionalInput<String>(name),
        platform = pulumi.Input.asInput<String>(platform),
        region = pulumi.Input.asOptionalInput<String>(region),
        skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
        supportedOsVersions =
            pulumi.Input.asOptionalInput<List<String>>(supportedOsVersions),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        uri = pulumi.Input.asOptionalInput<String>(uri),
        version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final changeDescriptionValue = changeDescription;
    if (changeDescriptionValue != null) {
      map['changeDescription'] = changeDescriptionValue;
    }
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['platform'] = platform;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final supportedOsVersionsValue = supportedOsVersions;
    if (supportedOsVersionsValue != null) {
      map['supportedOsVersions'] = supportedOsVersionsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    map['version'] = version;
    return map;
  }

  factory ComponentArgs.fromMap(Map<String, dynamic> map) {
    return ComponentArgs(
      changeDescription: map['changeDescription'] == null
          ? null
          : map['changeDescription'] as String,
      data: map['data'] == null ? null : map['data'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      platform: map['platform'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      skipDestroy:
          map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      supportedOsVersions: map['supportedOsVersions'] == null
          ? null
          : (map['supportedOsVersions'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      uri: map['uri'] == null ? null : map['uri'] as String,
      version: map['version'] as String,
    );
  }
}
