// ignore_for_file: unused_element, unnecessary_cast

class TriggerTrigger {
  /// The branches that will be included in the trigger configuration. If no branches   are specified, the trigger will apply to all branches.
  final List<String>? branches;

  /// Any custom data associated with the trigger that will be included in the information sent to the target of the trigger.
  final String? customData;

  /// The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS).
  final String destinationArn;

  /// The repository events that will cause the trigger to run actions in another service, such as sending a notification through Amazon Simple Notification Service (SNS). If no events are specified, the trigger will run for all repository events. Event types include: <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, `updateReference`, `createReference`, `deleteReference`.
  final List<String> events;

  /// The name of the trigger.
  final String name;

  TriggerTrigger({
    this.branches,
    this.customData,
    required this.destinationArn,
    required this.events,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchesValue = branches;
    if (branchesValue != null) {
      map['branches'] = branchesValue;
    }
    final customDataValue = customData;
    if (customDataValue != null) {
      map['customData'] = customDataValue;
    }
    map['destinationArn'] = destinationArn;
    map['events'] = events;
    map['name'] = name;
    return map;
  }

  factory TriggerTrigger.fromMap(Map<String, dynamic> map) {
    return TriggerTrigger(
      branches: map['branches'] == null
          ? null
          : (map['branches'] as List).cast<String>(),
      customData:
          map['customData'] == null ? null : map['customData'] as String,
      destinationArn: map['destinationArn'] as String,
      events: (map['events'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}
