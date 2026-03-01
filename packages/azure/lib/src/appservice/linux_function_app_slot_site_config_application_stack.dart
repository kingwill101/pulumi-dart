// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_site_config_application_stack_docker.dart';

class LinuxFunctionAppSlotSiteConfigApplicationStack {
  /// a `docker` block as detailed below.
  final List<LinuxFunctionAppSlotSiteConfigApplicationStackDocker>? dockers;
  /// The version of .Net. Possible values are `3.1`, `6.0`, `7.0`, `8.0`, `9.0` and `10.0`.
  final String? dotnetVersion;
  /// The version of Java to use. Possible values are `8`, `11`, `17` and `21`.
  final String? javaVersion;
  /// The version of Node to use. Possible values include `12`, `14`, `16`, `18`, `20`, `22` and `24`.
  final String? nodeVersion;
  /// The version of PowerShell Core to use. Possibles values are `7` , `7.2`, and `7.4`.
  final String? powershellCoreVersion;
  /// The version of Python to use. Possible values are `3.14`, `3.13`, `3.12`, `3.11`, `3.10`, `3.9`, `3.8` and `3.7`.
  final String? pythonVersion;
  /// Should the Linux Function App use a custom runtime?
  final bool? useCustomRuntime;
  /// Should the DotNet process use an isolated runtime. Defaults to `false`.
  final bool? useDotnetIsolatedRuntime;

  /// Creates a new [LinuxFunctionAppSlotSiteConfigApplicationStack].
  /// [dockers] a `docker` block as detailed below.
  /// [dotnetVersion] The version of .Net. Possible values are `3.1`, `6.0`, `7.0`, `8.0`, `9.0` and `10.0`.
  /// [javaVersion] The version of Java to use. Possible values are `8`, `11`, `17` and `21`.
  /// [nodeVersion] The version of Node to use. Possible values include `12`, `14`, `16`, `18`, `20`, `22` and `24`.
  /// [powershellCoreVersion] The version of PowerShell Core to use. Possibles values are `7` , `7.2`, and `7.4`.
  /// [pythonVersion] The version of Python to use. Possible values are `3.14`, `3.13`, `3.12`, `3.11`, `3.10`, `3.9`, `3.8` and `3.7`.
  /// [useCustomRuntime] Should the Linux Function App use a custom runtime?
  /// [useDotnetIsolatedRuntime] Should the DotNet process use an isolated runtime. Defaults to `false`.
  LinuxFunctionAppSlotSiteConfigApplicationStack({
    this.dockers,
    this.dotnetVersion,
    this.javaVersion,
    this.nodeVersion,
    this.powershellCoreVersion,
    this.pythonVersion,
    this.useCustomRuntime,
    this.useDotnetIsolatedRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockers': ?dockers == null ? null : pulumi.Input.encodeList<LinuxFunctionAppSlotSiteConfigApplicationStackDocker, Map<String, dynamic>>(dockers!, (value) => value.toMap()),
      'dotnetVersion': ?dotnetVersion,
      'javaVersion': ?javaVersion,
      'nodeVersion': ?nodeVersion,
      'powershellCoreVersion': ?powershellCoreVersion,
      'pythonVersion': ?pythonVersion,
      'useCustomRuntime': ?useCustomRuntime,
      'useDotnetIsolatedRuntime': ?useDotnetIsolatedRuntime,
    };
  }

  factory LinuxFunctionAppSlotSiteConfigApplicationStack.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotSiteConfigApplicationStack(
      dockers: map['dockers'] == null ? null : pulumi.Input.decodeList<LinuxFunctionAppSlotSiteConfigApplicationStackDocker>(map['dockers'], (value) => LinuxFunctionAppSlotSiteConfigApplicationStackDocker.fromMap((value as Map).cast<String, dynamic>())),
      dotnetVersion: map['dotnetVersion'] == null ? null : map['dotnetVersion'] as String,
      javaVersion: map['javaVersion'] == null ? null : map['javaVersion'] as String,
      nodeVersion: map['nodeVersion'] == null ? null : map['nodeVersion'] as String,
      powershellCoreVersion: map['powershellCoreVersion'] == null ? null : map['powershellCoreVersion'] as String,
      pythonVersion: map['pythonVersion'] == null ? null : map['pythonVersion'] as String,
      useCustomRuntime: map['useCustomRuntime'] == null ? null : map['useCustomRuntime'] as bool,
      useDotnetIsolatedRuntime: map['useDotnetIsolatedRuntime'] == null ? null : map['useDotnetIsolatedRuntime'] as bool,
    );
  }
}

