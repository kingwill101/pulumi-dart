// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionHostEntry {
  final pulumi.Input<String>? hostname;
  final pulumi.Input<String>? ipAddress;

  /// Creates a new [TaskDefinitionHostEntry].
  /// [hostname] Optional.
  /// [ipAddress] Optional.
  const TaskDefinitionHostEntry({
    this.hostname,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ipAddress': ?ipAddress,
    };
  }

  factory TaskDefinitionHostEntry.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionHostEntry(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

