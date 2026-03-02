// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_git_repository.dart';

/// Customized accelerator properties payload
class CustomizedAcceleratorProperties {
  final pulumi.Input<List<String>>? acceleratorTags;
  /// Type of the customized accelerator.
  final pulumi.Input<String>? acceleratorType;
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? displayName;
  final pulumi.Input<AcceleratorGitRepository> gitRepository;
  final pulumi.Input<String>? iconUrl;

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
      'gitRepository': pulumi.Input.mapInputValue<AcceleratorGitRepository, Map<String, dynamic>>(gitRepository, (value) => value.toMap()),
      'iconUrl': ?iconUrl,
    };
  }

  factory CustomizedAcceleratorProperties.fromMap(Map<String, dynamic> map) {
    return CustomizedAcceleratorProperties(
      acceleratorTags: map['acceleratorTags'] == null ? null : ((map['acceleratorTags']! as List).cast<String>()).input(),
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      gitRepository: (AcceleratorGitRepository.fromMap((map['gitRepository'] as Map).cast<String, dynamic>())).input(),
      iconUrl: map['iconUrl'] == null ? null : (map['iconUrl']! as String).input(),
    );
  }
}

