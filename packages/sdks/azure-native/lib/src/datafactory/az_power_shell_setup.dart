// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The express custom setup of installing Azure PowerShell.
class AzPowerShellSetup {
  /// The type of custom setup.
  /// Expected value is 'AzPowerShellSetup'.
  final pulumi.Input<String> type;
  /// The required version of Azure PowerShell to install.
  final pulumi.Input<String> version;

  /// Creates a new [AzPowerShellSetup].
  /// [type] The type of custom setup.
  /// [version] The required version of Azure PowerShell to install.
  const AzPowerShellSetup({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'version': version,
    };
  }

  factory AzPowerShellSetup.fromMap(Map<String, dynamic> map) {
    return AzPowerShellSetup(
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

