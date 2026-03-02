// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_trigger.dart';

/// {@template pulumi_codecommit_trigger_trigger_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_codecommit_trigger_trigger_args_doc}
class TriggerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name for the repository. This needs to be less than 100 characters.
  final pulumi.Input<String> repositoryName;
  /// The name of the trigger.
  final pulumi.Input<List<TriggerTrigger>> triggers;

  /// Creates a new [TriggerArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] The name for the repository. This needs to be less than 100 characters.
  /// [triggers] The name of the trigger.
  TriggerArgs({
    this.region,
    required this.repositoryName,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'repositoryName': repositoryName,
      'triggers': pulumi.Input.mapInputValue<List<TriggerTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<TriggerTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      repositoryName: (map['repositoryName'] as String).input(),
      triggers: (pulumi.Input.decodeList<TriggerTrigger>(map['triggers']!, (value) => TriggerTrigger.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

