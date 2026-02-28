// ignore_for_file: unused_element, unnecessary_cast

import 'domain_domain_settings_rstudio_server_pro_domain_settings_default_resource_spec.dart';

class DomainDomainSettingsRStudioServerProDomainSettings {
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block above.
  final DomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The ARN of the execution role for the RStudioServerPro Domain-level app.
  final String domainExecutionRoleArn;

  /// A URL pointing to an RStudio Connect server.
  final String? rStudioConnectUrl;

  /// A URL pointing to an RStudio Package Manager server.
  final String? rStudioPackageManagerUrl;

  /// Creates a new [DomainDomainSettingsRStudioServerProDomainSettings].
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block above.
  /// [domainExecutionRoleArn] The ARN of the execution role for the RStudioServerPro Domain-level app.
  /// [rStudioConnectUrl] A URL pointing to an RStudio Connect server.
  /// [rStudioPackageManagerUrl] A URL pointing to an RStudio Package Manager server.
  DomainDomainSettingsRStudioServerProDomainSettings({
    this.defaultResourceSpec,
    required this.domainExecutionRoleArn,
    this.rStudioConnectUrl,
    this.rStudioPackageManagerUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultResourceSpecValue = defaultResourceSpec;
    if (defaultResourceSpecValue != null) {
      map['defaultResourceSpec'] = defaultResourceSpecValue.toMap();
    }
    map['domainExecutionRoleArn'] = domainExecutionRoleArn;
    final rStudioConnectUrlValue = rStudioConnectUrl;
    if (rStudioConnectUrlValue != null) {
      map['rStudioConnectUrl'] = rStudioConnectUrlValue;
    }
    final rStudioPackageManagerUrlValue = rStudioPackageManagerUrl;
    if (rStudioPackageManagerUrlValue != null) {
      map['rStudioPackageManagerUrl'] = rStudioPackageManagerUrlValue;
    }
    return map;
  }

  factory DomainDomainSettingsRStudioServerProDomainSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDomainSettingsRStudioServerProDomainSettings(
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : DomainDomainSettingsRStudioServerProDomainSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      domainExecutionRoleArn: map['domainExecutionRoleArn'] as String,
      rStudioConnectUrl: map['rStudioConnectUrl'] == null
          ? null
          : map['rStudioConnectUrl'] as String,
      rStudioPackageManagerUrl: map['rStudioPackageManagerUrl'] == null
          ? null
          : map['rStudioPackageManagerUrl'] as String,
    );
  }
}
