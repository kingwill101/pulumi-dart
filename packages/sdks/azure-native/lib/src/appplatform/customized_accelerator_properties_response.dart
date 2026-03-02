// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_git_repository_response.dart';

/// Customized accelerator properties payload
class CustomizedAcceleratorPropertiesResponse {
  final pulumi.Input<List<String>>? acceleratorTags;
  /// Type of the customized accelerator.
  final pulumi.Input<String>? acceleratorType;
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? displayName;
  final pulumi.Input<AcceleratorGitRepositoryResponse> gitRepository;
  final pulumi.Input<String>? iconUrl;
  /// Imports references all imports that this accelerator/fragment depends upon.
  final pulumi.Input<List<String>> imports;
  /// State of the customized accelerator.
  final pulumi.Input<String> provisioningState;

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
      'gitRepository': pulumi.Input.mapInputValue<AcceleratorGitRepositoryResponse, Map<String, dynamic>>(gitRepository, (value) => value.toMap()),
      'iconUrl': ?iconUrl,
      'imports': imports,
      'provisioningState': provisioningState,
    };
  }

  factory CustomizedAcceleratorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomizedAcceleratorPropertiesResponse(
      acceleratorTags: map['acceleratorTags'] == null ? null : ((map['acceleratorTags'] as List).cast<String>()).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      gitRepository: (AcceleratorGitRepositoryResponse.fromMap((map['gitRepository'] as Map).cast<String, dynamic>())).input(),
      iconUrl: map['iconUrl'] == null ? null : (map['iconUrl'] as String).input(),
      imports: ((map['imports'] as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

