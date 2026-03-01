// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_solution_configuration_args_doc}
/// The set of arguments for SolutionConfiguration.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_solution_configuration_args_doc}
class SolutionConfigurationArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// Represent Solution Configuration Resource.
  final pulumi.Input<String>? solutionConfiguration;
  /// Solution settings
  final pulumi.Input<Map<String, String>>? solutionSettings;
  /// The type of the solution
  final pulumi.Input<String> solutionType;

  /// Creates a new [SolutionConfigurationArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [solutionConfiguration] Represent Solution Configuration Resource.
  /// [solutionSettings] Solution settings
  /// [solutionType] The type of the solution
  SolutionConfigurationArgs({
    required String resourceUri,
    String? solutionConfiguration,
    Map<String, String>? solutionSettings,
    required String solutionType,
  }) :
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      solutionConfiguration = pulumi.Input.asOptionalInput<String>(solutionConfiguration),
      solutionSettings = pulumi.Input.asOptionalInput<Map<String, String>>(solutionSettings),
      solutionType = pulumi.Input.asInput<String>(solutionType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'solutionConfiguration': ?solutionConfiguration,
      'solutionSettings': ?solutionSettings,
      'solutionType': solutionType,
    };
  }

  factory SolutionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SolutionConfigurationArgs(
      resourceUri: map['resourceUri'] as String,
      solutionConfiguration: map['solutionConfiguration'] == null ? null : map['solutionConfiguration'] as String,
      solutionSettings: map['solutionSettings'] == null ? null : (map['solutionSettings'] as Map).cast<String, String>(),
      solutionType: map['solutionType'] as String,
    );
  }
}

