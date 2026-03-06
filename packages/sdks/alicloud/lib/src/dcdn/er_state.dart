// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'er_env_conf.dart';

/// Input properties used for looking up and filtering Er resources.
class ErState {
  /// Routine The description of the routine.
  final pulumi.Input<String>? description;
  /// The configurations of the specified environment. See `env_conf` below.
  final pulumi.Input<ErEnvConf>? envConf;
  /// The name of the routine. The name must be unique among the routines that belong to the same Alibaba Cloud account.
  final pulumi.Input<String>? erName;

  /// Creates a new [ErState].
  /// [description] Routine The description of the routine.
  /// [envConf] The configurations of the specified environment. See `env_conf` below.
  /// [erName] The name of the routine. The name must be unique among the routines that belong to the same Alibaba Cloud account.
  const ErState({
    this.description,
    this.envConf,
    this.erName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'envConf': ?pulumi.Input.mapOptionalInputValue<ErEnvConf, Map<String, dynamic>>(envConf, (value) => value.toMap()),
      'erName': ?erName,
    };
  }

  factory ErState.fromMap(Map<String, dynamic> map) {
    return ErState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envConf: (() { final guardedValue = map['envConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErEnvConf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      erName: (() { final guardedValue = map['erName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

