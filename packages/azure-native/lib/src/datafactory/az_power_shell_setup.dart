// ignore_for_file: unused_element, unnecessary_cast


/// The express custom setup of installing Azure PowerShell.
class AzPowerShellSetup {
  /// The type of custom setup.
  /// Expected value is 'AzPowerShellSetup'.
  final String type;
  /// The required version of Azure PowerShell to install.
  final String version;

  /// Creates a new [AzPowerShellSetup].
  /// [type] The type of custom setup.
  /// [version] The required version of Azure PowerShell to install.
  AzPowerShellSetup({
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
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

