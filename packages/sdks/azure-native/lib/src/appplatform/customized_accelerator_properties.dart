// ignore_for_file: unused_element, unnecessary_cast

import 'accelerator_git_repository.dart';

/// Customized accelerator properties payload
class CustomizedAcceleratorProperties {
  final List<String>? acceleratorTags;
  /// Type of the customized accelerator.
  final String? acceleratorType;
  final String? description;
  final String? displayName;
  final AcceleratorGitRepository gitRepository;
  final String? iconUrl;

  /// Creates a new [CustomizedAcceleratorProperties].
  /// [acceleratorTags] Optional.
  /// [acceleratorType] Type of the customized accelerator.
  /// [description] Optional.
  /// [displayName] Optional.
  /// [gitRepository] Required.
  /// [iconUrl] Optional.
  CustomizedAcceleratorProperties({
    this.acceleratorTags,
    this.acceleratorType,
    this.description,
    this.displayName,
    required this.gitRepository,
    this.iconUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTags': ?acceleratorTags,
      'acceleratorType': ?acceleratorType,
      'description': ?description,
      'displayName': ?displayName,
      'gitRepository': gitRepository.toMap(),
      'iconUrl': ?iconUrl,
    };
  }

  factory CustomizedAcceleratorProperties.fromMap(Map<String, dynamic> map) {
    return CustomizedAcceleratorProperties(
      acceleratorTags: map['acceleratorTags'] == null ? null : (map['acceleratorTags'] as List).cast<String>(),
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gitRepository: AcceleratorGitRepository.fromMap((map['gitRepository'] as Map).cast<String, dynamic>()),
      iconUrl: map['iconUrl'] == null ? null : map['iconUrl'] as String,
    );
  }
}

