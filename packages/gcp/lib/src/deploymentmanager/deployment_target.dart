// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_target_config.dart';
import 'deployment_target_import.dart';

class DeploymentTarget {
  /// The root configuration file to use for this deployment.
  /// Structure is documented below.
  final DeploymentTargetConfig config;
  /// Specifies import files for this configuration. This can be
  /// used to import templates or other files. For example, you might
  /// import a text file in order to use the file in a template.
  /// Structure is documented below.
  final List<DeploymentTargetImport>? imports;

  /// Creates a new [DeploymentTarget].
  /// [config] The root configuration file to use for this deployment.
  /// [imports] Specifies import files for this configuration. This can be
  DeploymentTarget({
    required this.config,
    this.imports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config.toMap(),
      'imports': ?imports == null ? null : pulumi.Input.encodeList<DeploymentTargetImport, Map<String, dynamic>>(imports!, (value) => value.toMap()),
    };
  }

  factory DeploymentTarget.fromMap(Map<String, dynamic> map) {
    return DeploymentTarget(
      config: DeploymentTargetConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      imports: map['imports'] == null ? null : pulumi.Input.decodeList<DeploymentTargetImport>(map['imports'], (value) => DeploymentTargetImport.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

