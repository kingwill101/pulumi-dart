// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_jupyter_server_app_settings_code_repository.dart';
import 'domain_default_space_settings_jupyter_server_app_settings_default_resource_spec.dart';

class DomainDefaultSpaceSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `codeRepository` Block below.
  final pulumi.Input<List<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>?>? codeRepositories;
  /// Default instance type and the ARN of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec?>? defaultResourceSpec;
  /// ARN of the Lifecycle Configurations.
  final pulumi.Input<List<String>?>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterServerAppSettings].
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `codeRepository` Block below.
  /// [defaultResourceSpec] Default instance type and the ARN of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  /// [lifecycleConfigArns] ARN of the Lifecycle Configurations.
  const DomainDefaultSpaceSettingsJupyterServerAppSettings({
    this.codeRepositories,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositories': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>, List<Map<String, dynamic>>>(codeRepositories, (value) => pulumi.Input.encodeList<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory DomainDefaultSpaceSettingsJupyterServerAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsJupyterServerAppSettings(
      codeRepositories: (() { final guardedValue = map['codeRepositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>(guardedValue, (value) => DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleConfigArns: (() { final guardedValue = map['lifecycleConfigArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
