// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_file_response_deploymentmanager_v2.dart';
import 'import_file_response_deploymentmanager_v2.dart';

class TargetConfigurationResponseDeploymentmanagerV2 {
  /// The configuration to use for this deployment.
  final ConfigFileResponseDeploymentmanagerV2 config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFileResponseDeploymentmanagerV2> imports;

  /// Creates a new [TargetConfigurationResponseDeploymentmanagerV2].
  /// [config] The configuration to use for this deployment.
  /// [imports] Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  TargetConfigurationResponseDeploymentmanagerV2({
    required this.config,
    required this.imports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['imports'] = pulumi.Input.encodeList<
        ImportFileResponseDeploymentmanagerV2,
        Map<String, dynamic>>(imports, (value) => value.toMap());
    return map;
  }

  factory TargetConfigurationResponseDeploymentmanagerV2.fromMap(
      Map<String, dynamic> map) {
    return TargetConfigurationResponseDeploymentmanagerV2(
      config: ConfigFileResponseDeploymentmanagerV2.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      imports: pulumi.Input.decodeList<ImportFileResponseDeploymentmanagerV2>(
          map['imports'],
          (value) => ImportFileResponseDeploymentmanagerV2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
