// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_v3_concurrency_config_v3_concurrency_config_args_doc}
/// The set of arguments for V3ConcurrencyConfig.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_concurrency_config_v3_concurrency_config_args_doc}
class V3ConcurrencyConfigArgs {
  /// Function Name
  final pulumi.Input<String> functionName;
  /// Reserved Concurrency. Functions reserve a part of account concurrency. Other functions cannot use this part of concurrency. Reserved concurrency includes the total concurrency of Reserved Instances and As-You-go instances.
  final pulumi.Input<int>? reservedConcurrency;

  /// Creates a new [V3ConcurrencyConfigArgs].
  /// [functionName] Function Name
  /// [reservedConcurrency] Reserved Concurrency. Functions reserve a part of account concurrency. Other functions cannot use this part of concurrency. Reserved concurrency includes the total concurrency of Reserved Instances and As-You-go instances.
  V3ConcurrencyConfigArgs({
    required pulumi.Output<String> functionName,
    pulumi.Output<int>? reservedConcurrency,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      reservedConcurrency = pulumi.Input.asOptionalInput<int>(reservedConcurrency);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'reservedConcurrency': ?reservedConcurrency,
    };
  }

  factory V3ConcurrencyConfigArgs.fromMap(Map<String, dynamic> map) {
    return V3ConcurrencyConfigArgs(
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
      reservedConcurrency: map['reservedConcurrency'] == null ? null : pulumi.Output.create<int>(map['reservedConcurrency'] as int),
    );
  }
}

