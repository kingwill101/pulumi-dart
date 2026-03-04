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
  /// &gt; **NOTE:** Updating `data` or `uri` requires specifying a new `version`. This causes replacement of the resource. The `skip_destroy` argument can be used to retain the old version.
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
      changeDescription: (() {
        final guardedValue = map['changeDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platform: pulumi.Input.fromValue(map['platform'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipDestroy: (() {
        final guardedValue = map['skipDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      supportedOsVersions: (() {
        final guardedValue = map['supportedOsVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
