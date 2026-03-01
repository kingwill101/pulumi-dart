// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_action_code_configuration.dart';
import 'git_hub_action_container_configuration.dart';

/// The GitHub action configuration.
class GitHubActionConfiguration {
  /// GitHub Action code configuration.
  final GitHubActionCodeConfiguration? codeConfiguration;
  /// GitHub Action container configuration.
  final GitHubActionContainerConfiguration? containerConfiguration;
  /// Workflow option to determine whether the workflow file should be generated and written to the repository.
  final bool? generateWorkflowFile;
  /// This will help determine the workflow configuration to select.
  final bool? isLinux;

  /// Creates a new [GitHubActionConfiguration].
  /// [codeConfiguration] GitHub Action code configuration.
  /// [containerConfiguration] GitHub Action container configuration.
  /// [generateWorkflowFile] Workflow option to determine whether the workflow file should be generated and written to the repository.
  /// [isLinux] This will help determine the workflow configuration to select.
  GitHubActionConfiguration({
    this.codeConfiguration,
    this.containerConfiguration,
    this.generateWorkflowFile,
    this.isLinux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?codeConfiguration == null ? null : codeConfiguration!.toMap(),
      'containerConfiguration': ?containerConfiguration == null ? null : containerConfiguration!.toMap(),
      'generateWorkflowFile': ?generateWorkflowFile,
      'isLinux': ?isLinux,
    };
  }

  factory GitHubActionConfiguration.fromMap(Map<String, dynamic> map) {
    return GitHubActionConfiguration(
      codeConfiguration: map['codeConfiguration'] == null ? null : GitHubActionCodeConfiguration.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>()),
      containerConfiguration: map['containerConfiguration'] == null ? null : GitHubActionContainerConfiguration.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>()),
      generateWorkflowFile: map['generateWorkflowFile'] == null ? null : map['generateWorkflowFile'] as bool,
      isLinux: map['isLinux'] == null ? null : map['isLinux'] as bool,
    );
  }
}

