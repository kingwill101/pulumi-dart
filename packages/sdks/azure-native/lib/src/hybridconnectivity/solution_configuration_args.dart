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
  final pulumi.Input<String?>? solutionConfiguration;
  /// Solution settings
  final pulumi.Input<Map<String, String>?>? solutionSettings;
  /// The type of the solution
  final pulumi.Input<String> solutionType;

  /// Creates a new [SolutionConfigurationArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [solutionConfiguration] Represent Solution Configuration Resource.
  /// [solutionSettings] Solution settings
  /// [solutionType] The type of the solution
  const SolutionConfigurationArgs({
    required this.resourceUri,
    this.solutionConfiguration,
    this.solutionSettings,
    required this.solutionType,
  });

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
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      solutionConfiguration: (() { final guardedValue = map['solutionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionSettings: (() { final guardedValue = map['solutionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      solutionType: pulumi.Input.fromValue(map['solutionType'] as String),
    );
  }
}
