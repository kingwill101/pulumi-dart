// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbClustersClusterParamChangeLog {
  /// The id of parameter change.
  final pulumi.Input<int> configId;
  /// When the parameter change is created.
  final pulumi.Input<String> gmtCreated;
  /// When the parameter change is modified.
  final pulumi.Input<String> gmtModified;
  /// Whether the parameter changing is applied.
  final pulumi.Input<int> isApplied;
  /// Changed parameter name.
  final pulumi.Input<String> name;
  /// The new value of parameter.
  final pulumi.Input<String> newValue;
  /// The old value of parameter.
  final pulumi.Input<String> oldValue;

  /// Creates a new [GetDbClustersClusterParamChangeLog].
  /// [configId] The id of parameter change.
  /// [gmtCreated] When the parameter change is created.
  /// [gmtModified] When the parameter change is modified.
  /// [isApplied] Whether the parameter changing is applied.
  /// [name] Changed parameter name.
  /// [newValue] The new value of parameter.
  /// [oldValue] The old value of parameter.
  GetDbClustersClusterParamChangeLog({
    required this.configId,
    required this.gmtCreated,
    required this.gmtModified,
    required this.isApplied,
    required this.name,
    required this.newValue,
    required this.oldValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'gmtCreated': gmtCreated,
      'gmtModified': gmtModified,
      'isApplied': isApplied,
      'name': name,
      'newValue': newValue,
      'oldValue': oldValue,
    };
  }

  factory GetDbClustersClusterParamChangeLog.fromMap(Map<String, dynamic> map) {
    return GetDbClustersClusterParamChangeLog(
      configId: (map['configId'] as int).input(),
      gmtCreated: (map['gmtCreated'] as String).input(),
      gmtModified: (map['gmtModified'] as String).input(),
      isApplied: (map['isApplied'] as int).input(),
      name: (map['name'] as String).input(),
      newValue: (map['newValue'] as String).input(),
      oldValue: (map['oldValue'] as String).input(),
    );
  }
}

