// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entity_recognizer_input_data_config/entity_recognizer_input_data_config.dart';
import '../entity_recognizer_vpc_config/entity_recognizer_vpc_config.dart';

/// The set of arguments for EntityRecognizer.
class EntityRecognizerArgs {
  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  final Input<String> dataAccessRoleArn;

  /// Configuration for the training and testing data.
  /// See the <span pulumi-lang-nodejs="`inputDataConfig`" pulumi-lang-dotnet="`InputDataConfig`" pulumi-lang-go="`inputDataConfig`" pulumi-lang-python="`input_data_config`" pulumi-lang-yaml="`inputDataConfig`" pulumi-lang-java="`inputDataConfig`">`input_data_config`</span> Configuration Block section below.
  final Input<EntityRecognizerInputDataConfig> inputDataConfig;

  /// Two-letter language code for the language.
  /// One of <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>, <span pulumi-lang-nodejs="`es`" pulumi-lang-dotnet="`Es`" pulumi-lang-go="`es`" pulumi-lang-python="`es`" pulumi-lang-yaml="`es`" pulumi-lang-java="`es`">`es`</span>, <span pulumi-lang-nodejs="`fr`" pulumi-lang-dotnet="`Fr`" pulumi-lang-go="`fr`" pulumi-lang-python="`fr`" pulumi-lang-yaml="`fr`" pulumi-lang-java="`fr`">`fr`</span>, <span pulumi-lang-nodejs="`it`" pulumi-lang-dotnet="`It`" pulumi-lang-go="`it`" pulumi-lang-python="`it`" pulumi-lang-yaml="`it`" pulumi-lang-java="`it`">`it`</span>, <span pulumi-lang-nodejs="`de`" pulumi-lang-dotnet="`De`" pulumi-lang-go="`de`" pulumi-lang-python="`de`" pulumi-lang-yaml="`de`" pulumi-lang-java="`de`">`de`</span>, or <span pulumi-lang-nodejs="`pt`" pulumi-lang-dotnet="`Pt`" pulumi-lang-go="`pt`" pulumi-lang-python="`pt`" pulumi-lang-yaml="`pt`" pulumi-lang-java="`pt`">`pt`</span>.
  final Input<String> languageCode;

  /// The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  final Input<String>? modelKmsKeyId;

  /// Name for the Entity Recognizer.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name for the version of the Entity Recognizer.
  /// Each version must have a unique name within the Entity Recognizer.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with <span pulumi-lang-nodejs="`versionNamePrefix`" pulumi-lang-dotnet="`VersionNamePrefix`" pulumi-lang-go="`versionNamePrefix`" pulumi-lang-python="`version_name_prefix`" pulumi-lang-yaml="`versionNamePrefix`" pulumi-lang-java="`versionNamePrefix`">`version_name_prefix`</span>.
  final Input<String>? versionName;

  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with <span pulumi-lang-nodejs="`versionName`" pulumi-lang-dotnet="`VersionName`" pulumi-lang-go="`versionName`" pulumi-lang-python="`version_name`" pulumi-lang-yaml="`versionName`" pulumi-lang-java="`versionName`">`version_name`</span>.
  final Input<String>? versionNamePrefix;

  /// ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  final Input<String>? volumeKmsKeyId;

  /// Configuration parameters for VPC to contain Entity Recognizer resources.
  /// See the <span pulumi-lang-nodejs="`vpcConfig`" pulumi-lang-dotnet="`VpcConfig`" pulumi-lang-go="`vpcConfig`" pulumi-lang-python="`vpc_config`" pulumi-lang-yaml="`vpcConfig`" pulumi-lang-java="`vpcConfig`">`vpc_config`</span> Configuration Block section below.
  final Input<EntityRecognizerVpcConfig>? vpcConfig;

  EntityRecognizerArgs({
    required this.dataAccessRoleArn,
    required this.inputDataConfig,
    required this.languageCode,
    this.modelKmsKeyId,
    this.name,
    this.region,
    this.tags,
    this.versionName,
    this.versionNamePrefix,
    this.volumeKmsKeyId,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataAccessRoleArn'] = dataAccessRoleArn;
    map['inputDataConfig'] = Input.mapInputValue<
        EntityRecognizerInputDataConfig,
        Map<String, dynamic>>(inputDataConfig, (value) => value.toMap());
    map['languageCode'] = languageCode;
    final modelKmsKeyIdValue = modelKmsKeyId;
    if (modelKmsKeyIdValue != null) {
      map['modelKmsKeyId'] = modelKmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    final versionNamePrefixValue = versionNamePrefix;
    if (versionNamePrefixValue != null) {
      map['versionNamePrefix'] = versionNamePrefixValue;
    }
    final volumeKmsKeyIdValue = volumeKmsKeyId;
    if (volumeKmsKeyIdValue != null) {
      map['volumeKmsKeyId'] = volumeKmsKeyIdValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = Input.mapOptionalInputValue<EntityRecognizerVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory EntityRecognizerArgs.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerArgs(
      dataAccessRoleArn: Input.asInput<String>(map['dataAccessRoleArn']),
      inputDataConfig: Input.asInput<EntityRecognizerInputDataConfig>(
          map['inputDataConfig']),
      languageCode: Input.asInput<String>(map['languageCode']),
      modelKmsKeyId: Input.asOptionalInput<String>(map['modelKmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      versionName: Input.asOptionalInput<String>(map['versionName']),
      versionNamePrefix:
          Input.asOptionalInput<String>(map['versionNamePrefix']),
      volumeKmsKeyId: Input.asOptionalInput<String>(map['volumeKmsKeyId']),
      vpcConfig:
          Input.asOptionalInput<EntityRecognizerVpcConfig>(map['vpcConfig']),
    );
  }
}
