// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V3ConcurrencyConfig resources.
class V3ConcurrencyConfigState {
  /// (Available since v1.234.0) Resource identity of the function
  final pulumi.Input<String>? functionArn;
  /// Function Name
  final pulumi.Input<String>? functionName;
  /// Reserved Concurrency. Functions reserve a part of account concurrency. Other functions cannot use this part of concurrency. Reserved concurrency includes the total concurrency of Reserved Instances and As-You-go instances.
  final pulumi.Input<int>? reservedConcurrency;

  /// Creates a new [V3ConcurrencyConfigState].
  /// [functionArn] (Available since v1.234.0) Resource identity of the function
  /// [functionName] Function Name
  /// [reservedConcurrency] Reserved Concurrency. Functions reserve a part of account concurrency. Other functions cannot use this part of concurrency. Reserved concurrency includes the total concurrency of Reserved Instances and As-You-go instances.
  V3ConcurrencyConfigState({
    pulumi.Output<String>? functionArn,
    pulumi.Output<String>? functionName,
    pulumi.Output<int>? reservedConcurrency,
  }) :
      functionArn = pulumi.Input.asOptionalInput<String>(functionArn),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      reservedConcurrency = pulumi.Input.asOptionalInput<int>(reservedConcurrency);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': ?functionArn,
      'functionName': ?functionName,
      'reservedConcurrency': ?reservedConcurrency,
    };
  }

  factory V3ConcurrencyConfigState.fromMap(Map<String, dynamic> map) {
    return V3ConcurrencyConfigState(
      functionArn: map['functionArn'] == null ? null : pulumi.Output.create<String>(map['functionArn'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      reservedConcurrency: map['reservedConcurrency'] == null ? null : pulumi.Output.create<int>(map['reservedConcurrency'] as int),
    );
  }
}

