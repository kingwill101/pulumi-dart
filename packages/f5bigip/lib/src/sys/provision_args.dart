// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_provision_provision_args_doc}
/// The set of arguments for Provision.
/// {@endtemplate}
/// {@macro pulumi_sys_provision_provision_args_doc}
class ProvisionArgs {
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  final pulumi.Input<int>? cpuRatio;
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  final pulumi.Input<int>? diskRatio;
  final pulumi.Input<String>? fullPath;
  /// Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to `dedicated` requires setting all others to `none`. Setting the level of a module to `none` means the module is not activated.
  /// default is `nominal`
  /// possible options:
  /// * nominal
  /// * minimum
  /// * none
  /// * dedicated
  final pulumi.Input<String>? level;
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  final pulumi.Input<int>? memoryRatio;
  /// Name of module to provision in BIG-IP.
  /// possible options:
  /// * afm
  /// * am
  /// * apm
  /// * cgnat
  /// * asm
  /// * avr
  /// * dos
  /// * fps
  /// * gtm
  /// * ilx
  /// * lc
  /// * ltm
  /// * pem
  /// * sslo
  /// * swg
  /// * urldb
  final pulumi.Input<String> name;

  /// Creates a new [ProvisionArgs].
  /// [cpuRatio] Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  /// [diskRatio] Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  /// [fullPath] Optional.
  /// [level] Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to `dedicated` requires setting all others to `none`. Setting the level of a module to `none` means the module is not activated.
  /// [memoryRatio] Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  /// [name] Name of module to provision in BIG-IP.
  ProvisionArgs({
    int? cpuRatio,
    int? diskRatio,
    String? fullPath,
    String? level,
    int? memoryRatio,
    required String name,
  }) :
      cpuRatio = pulumi.Input.asOptionalInput<int>(cpuRatio),
      diskRatio = pulumi.Input.asOptionalInput<int>(diskRatio),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      level = pulumi.Input.asOptionalInput<String>(level),
      memoryRatio = pulumi.Input.asOptionalInput<int>(memoryRatio),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuRatio': ?cpuRatio,
      'diskRatio': ?diskRatio,
      'fullPath': ?fullPath,
      'level': ?level,
      'memoryRatio': ?memoryRatio,
      'name': name,
    };
  }

  factory ProvisionArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionArgs(
      cpuRatio: map['cpuRatio'] == null ? null : map['cpuRatio'] as int,
      diskRatio: map['diskRatio'] == null ? null : map['diskRatio'] as int,
      fullPath: map['fullPath'] == null ? null : map['fullPath'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      memoryRatio: map['memoryRatio'] == null ? null : map['memoryRatio'] as int,
      name: map['name'] as String,
    );
  }
}

