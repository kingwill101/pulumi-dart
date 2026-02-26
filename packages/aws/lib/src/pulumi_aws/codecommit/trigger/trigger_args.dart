// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trigger_trigger/trigger_trigger.dart';

/// The set of arguments for Trigger.
class TriggerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name for the repository. This needs to be less than 100 characters.
  final Input<String> repositoryName;

  /// The name of the trigger.
  final Input<List<TriggerTrigger>> triggers;

  TriggerArgs({
    this.region,
    required this.repositoryName,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repositoryName'] = repositoryName;
    map['triggers'] =
        Input.mapInputValue<List<TriggerTrigger>, List<Map<String, dynamic>>>(
            triggers,
            (value) => Input.encodeList<TriggerTrigger, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      region: Input.asOptionalInput<String>(map['region']),
      repositoryName: Input.asInput<String>(map['repositoryName']),
      triggers: Input.asInput<List<TriggerTrigger>>(map['triggers']),
    );
  }
}
