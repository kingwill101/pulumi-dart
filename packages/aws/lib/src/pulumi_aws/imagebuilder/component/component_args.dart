// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Component.
class ComponentArgs {
  /// Change description of the component.
  final Input<String>? changeDescription;

  /// Inline YAML string with data of the component. Exactly one of <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span> and <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> can be specified. the provider will only perform drift detection of its value when present in a configuration.
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

  /// Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipDestroy;

  /// Set of Operating Systems (OS) supported by the component.
  final Input<List<String>>? supportedOsVersions;

  /// Key-value map of resource tags for the component. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// S3 URI with data of the component. Exactly one of <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span> and <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> can be specified.
  ///
  /// > **NOTE:** Updating <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span> or <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> requires specifying a new <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>. This causes replacement of the resource. The <span pulumi-lang-nodejs="`skipDestroy`" pulumi-lang-dotnet="`SkipDestroy`" pulumi-lang-go="`skipDestroy`" pulumi-lang-python="`skip_destroy`" pulumi-lang-yaml="`skipDestroy`" pulumi-lang-java="`skipDestroy`">`skip_destroy`</span> argument can be used to retain the old version.
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
