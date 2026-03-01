// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaosstudio_target_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_chaosstudio_target_target_args_doc}
class TargetArgs {
  /// The Azure Region where the Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  final pulumi.Input<String>? location;
  /// Specifies the Target Resource Id within which this Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  final pulumi.Input<String> targetResourceId;
  /// The name of the Chaos Studio Target. This has the format of [publisher]-[targetType] e.g. `Microsoft-StorageAccount`. For supported values please see this Target Type column in [this table](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-providers). Changing this forces a new Chaos Studio Target to be created.
  final pulumi.Input<String> targetType;

  /// Creates a new [TargetArgs].
  /// [location] The Azure Region where the Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  /// [targetResourceId] Specifies the Target Resource Id within which this Chaos Studio Target should exist. Changing this forces a new Chaos Studio Target to be created.
  /// [targetType] The name of the Chaos Studio Target. This has the format of [publisher]-[targetType] e.g. `Microsoft-StorageAccount`. For supported values please see this Target Type column in [this table](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-providers). Changing this forces a new Chaos Studio Target to be created.
  TargetArgs({
    String? location,
    required String targetResourceId,
    required String targetType,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId),
      targetType = pulumi.Input.asInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'targetResourceId': targetResourceId,
      'targetType': targetType,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      location: map['location'] == null ? null : map['location'] as String,
      targetResourceId: map['targetResourceId'] as String,
      targetType: map['targetType'] as String,
    );
  }
}

