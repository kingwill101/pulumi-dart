// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_git_repository_response.dart';

/// Customized accelerator properties payload
class CustomizedAcceleratorPropertiesResponse {
  final List<String>? acceleratorTags;
  /// Type of the customized accelerator.
  final String? acceleratorType;
  final String? description;
  final String? displayName;
  final AcceleratorGitRepositoryResponse gitRepository;
  final String? iconUrl;
  /// Imports references all imports that this accelerator/fragment depends upon.
  final List<String> imports;
  /// State of the customized accelerator.
  final String provisioningState;

  /// Creates a new [CustomizedAcceleratorPropertiesResponse].
  /// [acceleratorTags] Optional.
  /// [acceleratorType] Type of the customized accelerator.
  /// [description] Optional.
  /// [displayName] Optional.
  /// [gitRepository] Required.
  /// [iconUrl] Optional.
  /// [imports] Imports references all imports that this accelerator/fragment depends upon.
  /// [provisioningState] State of the customized accelerator.
  CustomizedAcceleratorPropertiesResponse({
    this.acceleratorTags,
    this.acceleratorType,
    this.description,
    this.displayName,
    required this.gitRepository,
    this.iconUrl,
    required this.imports,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTags': ?acceleratorTags,
      'acceleratorType': ?acceleratorType,
      'description': ?description,
      'displayName': ?displayName,
      'gitRepository': gitRepository.toMap(),
      'iconUrl': ?iconUrl,
      'imports': imports,
      'provisioningState': provisioningState,
    };
  }

  factory CustomizedAcceleratorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomizedAcceleratorPropertiesResponse(
      acceleratorTags: map['acceleratorTags'] == null ? null : (map['acceleratorTags'] as List).cast<String>(),
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gitRepository: AcceleratorGitRepositoryResponse.fromMap((map['gitRepository'] as Map).cast<String, dynamic>()),
      iconUrl: map['iconUrl'] == null ? null : map['iconUrl'] as String,
      imports: (map['imports'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

