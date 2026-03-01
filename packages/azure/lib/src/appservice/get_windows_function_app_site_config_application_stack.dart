// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppSiteConfigApplicationStack {
  /// The version of .Net to use.
  final String dotnetVersion;
  /// The version of Java to use.
  final String javaVersion;
  /// The version of Node to use.
  final String nodeVersion;
  /// The version of PowerShell Core to use.
  final String powershellCoreVersion;
  /// Is the Windows Function App using a custom runtime?.
  final bool useCustomRuntime;
  final bool useDotnetIsolatedRuntime;

  /// Creates a new [GetWindowsFunctionAppSiteConfigApplicationStack].
  /// [dotnetVersion] The version of .Net to use.
  /// [javaVersion] The version of Java to use.
  /// [nodeVersion] The version of Node to use.
  /// [powershellCoreVersion] The version of PowerShell Core to use.
  /// [useCustomRuntime] Is the Windows Function App using a custom runtime?.
  /// [useDotnetIsolatedRuntime] Required.
  GetWindowsFunctionAppSiteConfigApplicationStack({
    required this.dotnetVersion,
    required this.javaVersion,
    required this.nodeVersion,
    required this.powershellCoreVersion,
    required this.useCustomRuntime,
    required this.useDotnetIsolatedRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dotnetVersion': dotnetVersion,
      'javaVersion': javaVersion,
      'nodeVersion': nodeVersion,
      'powershellCoreVersion': powershellCoreVersion,
      'useCustomRuntime': useCustomRuntime,
      'useDotnetIsolatedRuntime': useDotnetIsolatedRuntime,
    };
  }

  factory GetWindowsFunctionAppSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigApplicationStack(
      dotnetVersion: map['dotnetVersion'] as String,
      javaVersion: map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] as String,
      powershellCoreVersion: map['powershellCoreVersion'] as String,
      useCustomRuntime: map['useCustomRuntime'] as bool,
      useDotnetIsolatedRuntime: map['useDotnetIsolatedRuntime'] as bool,
    );
  }
}

