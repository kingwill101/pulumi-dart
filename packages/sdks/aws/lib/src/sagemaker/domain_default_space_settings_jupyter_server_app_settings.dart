// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_jupyter_server_app_settings_code_repository.dart';
import 'domain_default_space_settings_jupyter_server_app_settings_default_resource_spec.dart';

class DomainDefaultSpaceSettingsJupyterServerAppSettings {
  /// A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  final pulumi.Input<List<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>>? codeRepositories;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec>? defaultResourceSpec;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final pulumi.Input<List<String>>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultSpaceSettingsJupyterServerAppSettings].
  /// [codeRepositories] A list of Git repositories that SageMaker AI automatically displays to users for cloning in the JupyterServer application. see `code_repository` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  DomainDefaultSpaceSettingsJupyterServerAppSettings({
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
      codeRepositories: map['codeRepositories'] == null ? null : (pulumi.Input.decodeList<DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository>(map['codeRepositories'], (value) => DomainDefaultSpaceSettingsJupyterServerAppSettingsCodeRepository.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : (DomainDefaultSpaceSettingsJupyterServerAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>())).input(),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null ? null : ((map['lifecycleConfigArns'] as List).cast<String>()).input(),
    );
  }
}

