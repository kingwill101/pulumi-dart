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
  ErState({
    pulumi.Output<String>? description,
    pulumi.Output<ErEnvConf>? envConf,
    pulumi.Output<String>? erName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      envConf = pulumi.Input.asOptionalInput<ErEnvConf>(envConf),
      erName = pulumi.Input.asOptionalInput<String>(erName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'envConf': ?pulumi.Input.mapOptionalInputValue<ErEnvConf, Map<String, dynamic>>(envConf, (value) => value.toMap()),
      'erName': ?erName,
    };
  }

  factory ErState.fromMap(Map<String, dynamic> map) {
    return ErState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      envConf: map['envConf'] == null ? null : pulumi.Output.create<ErEnvConf>(ErEnvConf.fromMap((map['envConf'] as Map).cast<String, dynamic>())),
      erName: map['erName'] == null ? null : pulumi.Output.create<String>(map['erName'] as String),
    );
  }
}

