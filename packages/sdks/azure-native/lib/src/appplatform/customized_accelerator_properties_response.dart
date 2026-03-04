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
      'gitRepository':
          pulumi.Input.mapInputValue<
            AcceleratorGitRepositoryResponse,
            Map<String, dynamic>
          >(gitRepository, (value) => value.toMap()),
      'iconUrl': ?iconUrl,
      'imports': imports,
      'provisioningState': provisioningState,
    };
  }

  factory CustomizedAcceleratorPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomizedAcceleratorPropertiesResponse(
      acceleratorTags: (() {
        final guardedValue = map['acceleratorTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      acceleratorType: (() {
        final guardedValue = map['acceleratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gitRepository: pulumi.Input.fromValue(
        AcceleratorGitRepositoryResponse.fromMap(
          (map['gitRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
      iconUrl: (() {
        final guardedValue = map['iconUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imports: pulumi.Input.fromValue((map['imports'] as List).cast<String>()),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
