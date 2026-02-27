// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Component.
class ComponentArgs {
  /// Change description of the component.
  final Input<String>? changeDescription;

  /// Inline YAML string with data of the component. Exactly one of `data` and `uri` can be specified. the provider will only perform drift detection of its value when present in a configuration.
  final Input<String>? data;

  /// Description of the component.
  final Input<String>? description;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component.
  final Input<String>? kmsKeyId;

  /// Name of the component.
  final Input<String>? name;

  /// Platform of the component.
  final Input<String> platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to `false`.
  final Input<bool>? skipDestroy;

  /// Set of Operating Systems (OS) supported by the component.
  final Input<List<String>>? supportedOsVersions;

  /// Key-value map of resource tags for the component. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// S3 URI with data of the component. Exactly one of `data` and `uri` can be specified.
  ///
  /// > **NOTE:** Updating `data` or `uri` requires specifying a new `version`. This causes replacement of the resource. The `skip_destroy` argument can be used to retain the old version.
  final Input<String>? uri;

  /// Version of the component.
  ///
  /// The following arguments are optional:
  final Input<String> version;

  ComponentArgs({
    this.changeDescription,
    this.data,
    this.description,
    this.kmsKeyId,
    this.name,
    required this.platform,
    this.region,
    this.skipDestroy,
    this.supportedOsVersions,
    this.tags,
    this.uri,
    required this.version,
  });

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
      changeDescription:
          Input.asOptionalInput<String>(map['changeDescription']),
      data: Input.asOptionalInput<String>(map['data']),
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      platform: Input.asInput<String>(map['platform']),
      region: Input.asOptionalInput<String>(map['region']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      supportedOsVersions:
          Input.asOptionalInput<List<String>>(map['supportedOsVersions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      uri: Input.asOptionalInput<String>(map['uri']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
