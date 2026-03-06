// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_domain_settings_rstudio_server_pro_domain_settings_default_resource_spec.dart';

class DomainDomainSettingsRStudioServerProDomainSettings {
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block above.
  final pulumi.Input<DomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec>? defaultResourceSpec;
  /// The ARN of the execution role for the RStudioServerPro Domain-level app.
  final pulumi.Input<String> domainExecutionRoleArn;
  /// A URL pointing to an RStudio Connect server.
  final pulumi.Input<String>? rStudioConnectUrl;
  /// A URL pointing to an RStudio Package Manager server.
  final pulumi.Input<String>? rStudioPackageManagerUrl;

  /// Creates a new [DomainDomainSettingsRStudioServerProDomainSettings].
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block above.
  /// [domainExecutionRoleArn] The ARN of the execution role for the RStudioServerPro Domain-level app.
  /// [rStudioConnectUrl] A URL pointing to an RStudio Connect server.
  /// [rStudioPackageManagerUrl] A URL pointing to an RStudio Package Manager server.
  const DomainDomainSettingsRStudioServerProDomainSettings({
    this.defaultResourceSpec,
    required this.domainExecutionRoleArn,
    this.rStudioConnectUrl,
    this.rStudioPackageManagerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<DomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'domainExecutionRoleArn': domainExecutionRoleArn,
      'rStudioConnectUrl': ?rStudioConnectUrl,
      'rStudioPackageManagerUrl': ?rStudioPackageManagerUrl,
    };
  }

  factory DomainDomainSettingsRStudioServerProDomainSettings.fromMap(Map<String, dynamic> map) {
    return DomainDomainSettingsRStudioServerProDomainSettings(
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainExecutionRoleArn: pulumi.Input.fromValue(map['domainExecutionRoleArn'] as String),
      rStudioConnectUrl: (() { final guardedValue = map['rStudioConnectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rStudioPackageManagerUrl: (() { final guardedValue = map['rStudioPackageManagerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

