// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_jupyter_server_app_settings_code_repository.dart';
import 'space_space_settings_jupyter_server_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. See `code_repository` Block below.
  final pulumi.Input<
    List<SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository>
  >?
  codeRepositories;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  final pulumi.Input<
    SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec
  >
  defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final pulumi.Input<List<String>>? lifecycleConfigArns;

  /// Creates a new [SpaceSpaceSettingsJupyterServerAppSettings].
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. See `code_repository` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  SpaceSpaceSettingsJupyterServerAppSettings({
    this.codeRepositories,
    required this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositories':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository>,
            List<Map<String, dynamic>>
          >(
            codeRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultResourceSpec':
          pulumi.Input.mapInputValue<
            SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec,
            Map<String, dynamic>
          >(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory SpaceSpaceSettingsJupyterServerAppSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpaceSpaceSettingsJupyterServerAppSettings(
      codeRepositories: (() {
        final guardedValue = map['codeRepositories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository
          >(
            guardedValue,
            (value) =>
                SpaceSpaceSettingsJupyterServerAppSettingsCodeRepository.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      defaultResourceSpec: pulumi.Input.fromValue(
        SpaceSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec.fromMap(
          (map['defaultResourceSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      lifecycleConfigArns: (() {
        final guardedValue = map['lifecycleConfigArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
