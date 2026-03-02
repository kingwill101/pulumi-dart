// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'er_env_conf.dart';

/// {@template pulumi_dcdn_er_er_args_doc}
/// The set of arguments for Er.
/// {@endtemplate}
/// {@macro pulumi_dcdn_er_er_args_doc}
class ErArgs {
  /// Routine The description of the routine.
  final pulumi.Input<String>? description;
  /// The configurations of the specified environment. See `env_conf` below.
  final pulumi.Input<ErEnvConf>? envConf;
  /// The name of the routine. The name must be unique among the routines that belong to the same Alibaba Cloud account.
  final pulumi.Input<String> erName;

  /// Creates a new [ErArgs].
  /// [description] Routine The description of the routine.
  /// [envConf] The configurations of the specified environment. See `env_conf` below.
  /// [erName] The name of the routine. The name must be unique among the routines that belong to the same Alibaba Cloud account.
  ErArgs({
    this.description,
    this.envConf,
    required this.erName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'envConf': ?pulumi.Input.mapOptionalInputValue<ErEnvConf, Map<String, dynamic>>(envConf, (value) => value.toMap()),
      'erName': erName,
    };
  }

  factory ErArgs.fromMap(Map<String, dynamic> map) {
    return ErArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      envConf: map['envConf'] == null ? null : (ErEnvConf.fromMap((map['envConf']! as Map).cast<String, dynamic>())).input(),
      erName: (map['erName'] as String).input(),
    );
  }
}

