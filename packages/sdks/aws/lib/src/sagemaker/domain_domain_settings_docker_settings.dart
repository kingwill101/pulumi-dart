// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDomainSettingsDockerSettings {
  /// Indicates whether the domain can access Docker. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? enableDockerAccess;
  /// The list of Amazon Web Services accounts that are trusted when the domain is created in VPC-only mode.
  final pulumi.Input<List<String>>? vpcOnlyTrustedAccounts;

  /// Creates a new [DomainDomainSettingsDockerSettings].
  /// [enableDockerAccess] Indicates whether the domain can access Docker. Valid values are `ENABLED` and `DISABLED`.
  /// [vpcOnlyTrustedAccounts] The list of Amazon Web Services accounts that are trusted when the domain is created in VPC-only mode.
  DomainDomainSettingsDockerSettings({
    this.enableDockerAccess,
    this.vpcOnlyTrustedAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDockerAccess': ?enableDockerAccess,
      'vpcOnlyTrustedAccounts': ?vpcOnlyTrustedAccounts,
    };
  }

  factory DomainDomainSettingsDockerSettings.fromMap(Map<String, dynamic> map) {
    return DomainDomainSettingsDockerSettings(
      enableDockerAccess: map['enableDockerAccess'] == null ? null : (map['enableDockerAccess'] as String).input(),
      vpcOnlyTrustedAccounts: map['vpcOnlyTrustedAccounts'] == null ? null : ((map['vpcOnlyTrustedAccounts'] as List).cast<String>()).input(),
    );
  }
}

