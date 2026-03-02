// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_scheduled_action_args_doc}
/// Arguments for getScheduledAction.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_scheduled_action_args_doc}
class GetScheduledActionArgs {
  /// Scheduled action name.
  final pulumi.Input<String> name;

  /// Creates a new [GetScheduledActionArgs].
  /// [name] Scheduled action name.
  GetScheduledActionArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetScheduledActionArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledActionArgs(
      name: (map['name'] as String).input(),
    );
  }
}

