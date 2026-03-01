// ignore_for_file: unused_element, unnecessary_cast

import 'source_control_github_action_configuration_code_configuration.dart';
import 'source_control_github_action_configuration_container_configuration.dart';

class SourceControlGithubActionConfiguration {
  /// A `code_configuration` block as defined above. Changing this forces a new resource to be created.
  final SourceControlGithubActionConfigurationCodeConfiguration? codeConfiguration;
  /// A `container_configuration` block as defined above.
  final SourceControlGithubActionConfigurationContainerConfiguration? containerConfiguration;
  /// Whether to generate the GitHub work flow file. Defaults to `true`. Changing this forces a new resource to be created.
  final bool? generateWorkflowFile;
  /// Denotes this action uses a Linux base image.
  final bool? linuxAction;

  /// Creates a new [SourceControlGithubActionConfiguration].
  /// [codeConfiguration] A `code_configuration` block as defined above. Changing this forces a new resource to be created.
  /// [containerConfiguration] A `container_configuration` block as defined above.
  /// [generateWorkflowFile] Whether to generate the GitHub work flow file. Defaults to `true`. Changing this forces a new resource to be created.
  /// [linuxAction] Denotes this action uses a Linux base image.
  SourceControlGithubActionConfiguration({
    this.codeConfiguration,
    this.containerConfiguration,
    this.generateWorkflowFile,
    this.linuxAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?codeConfiguration == null ? null : codeConfiguration!.toMap(),
      'containerConfiguration': ?containerConfiguration == null ? null : containerConfiguration!.toMap(),
      'generateWorkflowFile': ?generateWorkflowFile,
      'linuxAction': ?linuxAction,
    };
  }

  factory SourceControlGithubActionConfiguration.fromMap(Map<String, dynamic> map) {
    return SourceControlGithubActionConfiguration(
      codeConfiguration: map['codeConfiguration'] == null ? null : SourceControlGithubActionConfigurationCodeConfiguration.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>()),
      containerConfiguration: map['containerConfiguration'] == null ? null : SourceControlGithubActionConfigurationContainerConfiguration.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>()),
      generateWorkflowFile: map['generateWorkflowFile'] == null ? null : map['generateWorkflowFile'] as bool,
      linuxAction: map['linuxAction'] == null ? null : map['linuxAction'] as bool,
    );
  }
}

