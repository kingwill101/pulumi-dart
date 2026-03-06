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
  const CustomizedAcceleratorProperties({
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
      acceleratorTags: (() { final guardedValue = map['acceleratorTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitRepository: pulumi.Input.fromValue(AcceleratorGitRepository.fromMap((map['gitRepository']! as Map).cast<String, dynamic>())),
      iconUrl: (() { final guardedValue = map['iconUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

