// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSandboxCustomImage.
class GetSandboxCustomImageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The base image name on which the custom image is built on top of. It can be one of the LanguageExtensionImageName (e.g.: 'Python3_10_8', 'Python3_10_8_DL') or the name of an existing custom image. Either this property or languageVersion should be specified.
  final String? baseImageName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The language name, for example Python.
  final String language;
  /// The version of the language. Either this property or baseImageName should be specified.
  final String? languageVersion;
  /// The name of the resource
  final String name;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// The requirements file content.
  final String? requirementsFileContent;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSandboxCustomImageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [baseImageName] The base image name on which the custom image is built on top of. It can be one of the LanguageExtensionImageName (e.g.: 'Python3_10_8', 'Python3_10_8_DL') or the name of an existing custom image. Either this property or languageVersion should be specified.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [language] The language name, for example Python.
  /// [languageVersion] The version of the language. Either this property or baseImageName should be specified.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [requirementsFileContent] The requirements file content.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSandboxCustomImageResult({
    required this.azureApiVersion,
    this.baseImageName,
    required this.id,
    required this.language,
    this.languageVersion,
    required this.name,
    required this.provisioningState,
    this.requirementsFileContent,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'baseImageName': ?baseImageName,
      'id': id,
      'language': language,
      'languageVersion': ?languageVersion,
      'name': name,
      'provisioningState': provisioningState,
      'requirementsFileContent': ?requirementsFileContent,
      'type': type,
    };
  }

  factory GetSandboxCustomImageResult.fromMap(Map<String, dynamic> map) {
    return GetSandboxCustomImageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      baseImageName: map['baseImageName'] == null ? null : map['baseImageName']! as String,
      id: map['id'] as String,
      language: map['language'] as String,
      languageVersion: map['languageVersion'] == null ? null : map['languageVersion']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      requirementsFileContent: map['requirementsFileContent'] == null ? null : map['requirementsFileContent']! as String,
      type: map['type'] as String,
    );
  }
}

