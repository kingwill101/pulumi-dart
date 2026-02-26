// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../runtime_template_software_config_env/runtime_template_software_config_env.dart';
import '../runtime_template_software_config_post_startup_script_config/runtime_template_software_config_post_startup_script_config.dart';

class RuntimeTemplateSoftwareConfig {
  /// Environment variables to be passed to the container.
  /// Structure is documented below.
  final List<RuntimeTemplateSoftwareConfigEnv>? envs;

  /// Post startup script config.
  /// Structure is documented below.
  final RuntimeTemplateSoftwareConfigPostStartupScriptConfig?
      postStartupScriptConfig;

  RuntimeTemplateSoftwareConfig({
    this.envs,
    this.postStartupScriptConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final envsValue = envs;
    if (envsValue != null) {
      map['envs'] = Input.encodeList<RuntimeTemplateSoftwareConfigEnv,
          Map<String, dynamic>>(envsValue, (value) => value.toMap());
    }
    final postStartupScriptConfigValue = postStartupScriptConfig;
    if (postStartupScriptConfigValue != null) {
      map['postStartupScriptConfig'] = postStartupScriptConfigValue.toMap();
    }
    return map;
  }

  factory RuntimeTemplateSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateSoftwareConfig(
      envs: map['envs'] == null
          ? null
          : Input.decodeList<RuntimeTemplateSoftwareConfigEnv>(
              map['envs'],
              (value) => RuntimeTemplateSoftwareConfigEnv.fromMap(
                  (value as Map).cast<String, dynamic>())),
      postStartupScriptConfig: map['postStartupScriptConfig'] == null
          ? null
          : RuntimeTemplateSoftwareConfigPostStartupScriptConfig.fromMap(
              (map['postStartupScriptConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
