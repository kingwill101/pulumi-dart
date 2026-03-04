// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_get_event_buses_get_event_buses_args_doc}
/// Arguments for getEventBuses.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_get_event_buses_get_event_buses_args_doc}
class GetEventBusesArgs {
  /// The event bus type.
  final pulumi.Input<String>? eventBusType;

  /// A list of Event Bus IDs. Its element value is same as Event Bus Name.
  final pulumi.Input<List<String>>? ids;

  /// The name prefix.
  final pulumi.Input<String>? namePrefix;

  /// A regex string to filter results by Event Bus name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEventBusesArgs].
  /// [eventBusType] The event bus type.
  /// [ids] A list of Event Bus IDs. Its element value is same as Event Bus Name.
  /// [namePrefix] The name prefix.
  /// [nameRegex] A regex string to filter results by Event Bus name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEventBusesArgs({
    this.eventBusType,
    this.ids,
    this.namePrefix,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusType': ?eventBusType,
      'ids': ?ids,
      'namePrefix': ?namePrefix,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEventBusesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventBusesArgs(
      eventBusType: (() {
        final guardedValue = map['eventBusType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
