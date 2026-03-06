// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The express custom setup of installing Azure PowerShell.
class AzPowerShellSetupResponse {
  /// The type of custom setup.
  /// Expected value is 'AzPowerShellSetup'.
  final pulumi.Input<String> type;
  /// The required version of Azure PowerShell to install.
  final pulumi.Input<String> version;

  /// Creates a new [AzPowerShellSetupResponse].
  /// [type] The type of custom setup.
  /// [version] The required version of Azure PowerShell to install.
  const AzPowerShellSetupResponse({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory AzPowerShellSetupResponse.fromMap(Map<String, dynamic> map) {
    return AzPowerShellSetupResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

