// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_sandbox_custom_image_args_doc}
/// The set of arguments for SandboxCustomImage.
/// {@endtemplate}
/// {@macro pulumi_kusto_sandbox_custom_image_args_doc}
class SandboxCustomImageArgs {
  /// The base image name on which the custom image is built on top of. It can be one of the LanguageExtensionImageName (e.g.: 'Python3_10_8', 'Python3_10_8_DL') or the name of an existing custom image. Either this property or languageVersion should be specified.
  final pulumi.Input<String>? baseImageName;
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The language name, for example Python.
  final pulumi.Input<String> language;
  /// The version of the language. Either this property or baseImageName should be specified.
  final pulumi.Input<String>? languageVersion;
  /// The requirements file content.
  final pulumi.Input<String>? requirementsFileContent;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the sandbox custom image.
  final pulumi.Input<String>? sandboxCustomImageName;

  /// Creates a new [SandboxCustomImageArgs].
  /// [baseImageName] The base image name on which the custom image is built on top of. It can be one of the LanguageExtensionImageName (e.g.: 'Python3_10_8', 'Python3_10_8_DL') or the name of an existing custom image. Either this property or languageVersion should be specified.
  /// [clusterName] The name of the Kusto cluster.
  /// [language] The language name, for example Python.
  /// [languageVersion] The version of the language. Either this property or baseImageName should be specified.
  /// [requirementsFileContent] The requirements file content.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sandboxCustomImageName] The name of the sandbox custom image.
  SandboxCustomImageArgs({
    pulumi.Output<String>? baseImageName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> language,
    pulumi.Output<String>? languageVersion,
    pulumi.Output<String>? requirementsFileContent,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sandboxCustomImageName,
  }) :
      baseImageName = pulumi.Input.asOptionalInput<String>(baseImageName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      language = pulumi.Input.asInput<String>(language),
      languageVersion = pulumi.Input.asOptionalInput<String>(languageVersion),
      requirementsFileContent = pulumi.Input.asOptionalInput<String>(requirementsFileContent),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sandboxCustomImageName = pulumi.Input.asOptionalInput<String>(sandboxCustomImageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseImageName': ?baseImageName,
      'clusterName': clusterName,
      'language': language,
      'languageVersion': ?languageVersion,
      'requirementsFileContent': ?requirementsFileContent,
      'resourceGroupName': resourceGroupName,
      'sandboxCustomImageName': ?sandboxCustomImageName,
    };
  }

  factory SandboxCustomImageArgs.fromMap(Map<String, dynamic> map) {
    return SandboxCustomImageArgs(
      baseImageName: map['baseImageName'] == null ? null : pulumi.Output.create<String>(map['baseImageName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      language: pulumi.Output.create<String>(map['language'] as String),
      languageVersion: map['languageVersion'] == null ? null : pulumi.Output.create<String>(map['languageVersion'] as String),
      requirementsFileContent: map['requirementsFileContent'] == null ? null : pulumi.Output.create<String>(map['requirementsFileContent'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sandboxCustomImageName: map['sandboxCustomImageName'] == null ? null : pulumi.Output.create<String>(map['sandboxCustomImageName'] as String),
    );
  }
}

