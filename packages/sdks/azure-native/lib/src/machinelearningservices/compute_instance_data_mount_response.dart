// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an Aml Instance DataMount.
class ComputeInstanceDataMountResponse {
  /// who this data mount created by.
  final pulumi.Input<String>? createdBy;

  /// Error of this data mount.
  final pulumi.Input<String>? error;

  /// Mount Action.
  final pulumi.Input<String>? mountAction;

  /// name of the ComputeInstance data mount.
  final pulumi.Input<String>? mountName;

  /// Path of this data mount.
  final pulumi.Input<String>? mountPath;

  /// Mount state.
  final pulumi.Input<String>? mountState;

  /// The time when the disk mounted.
  final pulumi.Input<String>? mountedOn;

  /// Source of the ComputeInstance data mount.
  final pulumi.Input<String>? source;

  /// Data source type.
  final pulumi.Input<String>? sourceType;

  /// Creates a new [ComputeInstanceDataMountResponse].
  /// [createdBy] who this data mount created by.
  /// [error] Error of this data mount.
  /// [mountAction] Mount Action.
  /// [mountName] name of the ComputeInstance data mount.
  /// [mountPath] Path of this data mount.
  /// [mountState] Mount state.
  /// [mountedOn] The time when the disk mounted.
  /// [source] Source of the ComputeInstance data mount.
  /// [sourceType] Data source type.
  ComputeInstanceDataMountResponse({
    this.createdBy,
    this.error,
    this.mountAction,
    this.mountName,
    this.mountPath,
    this.mountState,
    this.mountedOn,
    this.source,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': ?createdBy,
      'error': ?error,
      'mountAction': ?mountAction,
      'mountName': ?mountName,
      'mountPath': ?mountPath,
      'mountState': ?mountState,
      'mountedOn': ?mountedOn,
      'source': ?source,
      'sourceType': ?sourceType,
    };
  }

  factory ComputeInstanceDataMountResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceDataMountResponse(
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountAction: (() {
        final guardedValue = map['mountAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountName: (() {
        final guardedValue = map['mountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountPath: (() {
        final guardedValue = map['mountPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountState: (() {
        final guardedValue = map['mountState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountedOn: (() {
        final guardedValue = map['mountedOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceType: (() {
        final guardedValue = map['sourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
