// ignore_for_file: unused_element, unnecessary_cast


class GetDbClustersClusterParamChangeLog {
  /// The id of parameter change.
  final int configId;
  /// When the parameter change is created.
  final String gmtCreated;
  /// When the parameter change is modified.
  final String gmtModified;
  /// Whether the parameter changing is applied.
  final int isApplied;
  /// Changed parameter name.
  final String name;
  /// The new value of parameter.
  final String newValue;
  /// The old value of parameter.
  final String oldValue;

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
      configId: map['configId'] as int,
      gmtCreated: map['gmtCreated'] as String,
      gmtModified: map['gmtModified'] as String,
      isApplied: map['isApplied'] as int,
      name: map['name'] as String,
      newValue: map['newValue'] as String,
      oldValue: map['oldValue'] as String,
    );
  }
}

