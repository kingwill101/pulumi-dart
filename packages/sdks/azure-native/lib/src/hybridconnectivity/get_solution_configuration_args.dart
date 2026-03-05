// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridconnectivity_get_solution_configuration_args_doc}
/// Arguments for getSolutionConfiguration.
/// {@endtemplate}
/// {@macro pulumi_hybridconnectivity_get_solution_configuration_args_doc}
class GetSolutionConfigurationArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// Represent Solution Configuration Resource.
  final pulumi.Input<String> solutionConfiguration;

  /// Creates a new [GetSolutionConfigurationArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [solutionConfiguration] Represent Solution Configuration Resource.
  GetSolutionConfigurationArgs({
    required this.resourceUri,
    required this.solutionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'solutionConfiguration': solutionConfiguration,
    };
  }

  factory GetSolutionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionConfigurationArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      solutionConfiguration: pulumi.Input.fromValue(map['solutionConfiguration'] as String),
    );
  }
}

