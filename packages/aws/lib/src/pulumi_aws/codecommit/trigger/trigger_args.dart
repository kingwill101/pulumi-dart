// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trigger_trigger/trigger_trigger.dart';

/// The set of arguments for Trigger.
class TriggerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name for the repository. This needs to be less than 100 characters.
  final pulumi.Input<String> repositoryName;

  /// The name of the trigger.
  final pulumi.Input<List<TriggerTrigger>> triggers;

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
    map['triggers'] = pulumi.Input.mapInputValue<List<TriggerTrigger>,
            List<Map<String, dynamic>>>(
        triggers,
        (value) =>
            pulumi.Input.encodeList<TriggerTrigger, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
      triggers: pulumi.Input.asInput<List<TriggerTrigger>>(map['triggers']),
    );
  }
}
