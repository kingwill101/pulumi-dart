// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_file_response_deploymentmanager_v2beta.dart';
import 'import_file_response_deploymentmanager_v2beta.dart';

class TargetConfigurationResponseDeploymentmanagerV2beta {
  /// The configuration to use for this deployment.
  final ConfigFileResponseDeploymentmanagerV2beta config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFileResponseDeploymentmanagerV2beta> imports;

  /// Creates a new [TargetConfigurationResponseDeploymentmanagerV2beta].
  /// [config] The configuration to use for this deployment.
  /// [imports] Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  TargetConfigurationResponseDeploymentmanagerV2beta({
    required this.config,
    required this.imports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['imports'] = pulumi.Input.encodeList<
        ImportFileResponseDeploymentmanagerV2beta,
        Map<String, dynamic>>(imports, (value) => value.toMap());
    return map;
  }

  factory TargetConfigurationResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return TargetConfigurationResponseDeploymentmanagerV2beta(
      config: ConfigFileResponseDeploymentmanagerV2beta.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      imports:
          pulumi.Input.decodeList<ImportFileResponseDeploymentmanagerV2beta>(
              map['imports'],
              (value) => ImportFileResponseDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
