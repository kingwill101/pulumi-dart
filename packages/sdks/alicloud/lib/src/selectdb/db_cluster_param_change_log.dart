// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbClusterParamChangeLog {
  /// The id of parameter change.
  final pulumi.Input<int>? configId;
  /// When the parameter change is created.
  final pulumi.Input<String>? gmtCreated;
  /// When the parameter change is modified.
  final pulumi.Input<String>? gmtModified;
  /// Whether the parameter changing is applied.
  final pulumi.Input<bool>? isApplied;
  /// Changed parameter name.
  final pulumi.Input<String>? name;
  /// The new value of parameter.
  final pulumi.Input<String>? newValue;
  /// The old value of parameter.
  final pulumi.Input<String>? oldValue;

  /// Creates a new [DbClusterParamChangeLog].
  /// [configId] The id of parameter change.
  /// [gmtCreated] When the parameter change is created.
  /// [gmtModified] When the parameter change is modified.
  /// [isApplied] Whether the parameter changing is applied.
  /// [name] Changed parameter name.
  /// [newValue] The new value of parameter.
  /// [oldValue] The old value of parameter.
  DbClusterParamChangeLog({
    this.configId,
    this.gmtCreated,
    this.gmtModified,
    this.isApplied,
    this.name,
    this.newValue,
    this.oldValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'gmtCreated': ?gmtCreated,
      'gmtModified': ?gmtModified,
      'isApplied': ?isApplied,
      'name': ?name,
      'newValue': ?newValue,
      'oldValue': ?oldValue,
    };
  }

  factory DbClusterParamChangeLog.fromMap(Map<String, dynamic> map) {
    return DbClusterParamChangeLog(
      configId: map['configId'] == null ? null : (map['configId']! as int).input(),
      gmtCreated: map['gmtCreated'] == null ? null : (map['gmtCreated']! as String).input(),
      gmtModified: map['gmtModified'] == null ? null : (map['gmtModified']! as String).input(),
      isApplied: map['isApplied'] == null ? null : (map['isApplied']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      newValue: map['newValue'] == null ? null : (map['newValue']! as String).input(),
      oldValue: map['oldValue'] == null ? null : (map['oldValue']! as String).input(),
    );
  }
}

