// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmTrainingSpecificationTrainingChannel {
  /// Description of the channel.
  final pulumi.Input<String>? description;
  /// Whether the channel is required.
  final pulumi.Input<bool>? isRequired;
  /// Channel name.
  final pulumi.Input<String> name;
  /// Supported compression types. Allowed values are: `None` and `Gzip`.
  final pulumi.Input<List<String>>? supportedCompressionTypes;
  /// Supported input content types.
  final pulumi.Input<List<String>> supportedContentTypes;
  /// Supported training input modes.
  final pulumi.Input<List<String>> supportedInputModes;

  /// Creates a new [AlgorithmTrainingSpecificationTrainingChannel].
  /// [description] Description of the channel.
  /// [isRequired] Whether the channel is required.
  /// [name] Channel name.
  /// [supportedCompressionTypes] Supported compression types. Allowed values are: `None` and `Gzip`.
  /// [supportedContentTypes] Supported input content types.
  /// [supportedInputModes] Supported training input modes.
  const AlgorithmTrainingSpecificationTrainingChannel({
    this.description,
    this.isRequired,
    required this.name,
    this.supportedCompressionTypes,
    required this.supportedContentTypes,
    required this.supportedInputModes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isRequired': ?isRequired,
      'name': name,
      'supportedCompressionTypes': ?supportedCompressionTypes,
      'supportedContentTypes': supportedContentTypes,
      'supportedInputModes': supportedInputModes,
    };
  }

  factory AlgorithmTrainingSpecificationTrainingChannel.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationTrainingChannel(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRequired: (() { final guardedValue = map['isRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      supportedCompressionTypes: (() { final guardedValue = map['supportedCompressionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedContentTypes: pulumi.Input.fromValue((map['supportedContentTypes'] as List).cast<String>()),
      supportedInputModes: pulumi.Input.fromValue((map['supportedInputModes'] as List).cast<String>()),
    );
  }
}
