// ignore_for_file: unused_element, unnecessary_cast


class DbClusterParamChangeLog {
  /// The id of parameter change.
  final int? configId;
  /// When the parameter change is created.
  final String? gmtCreated;
  /// When the parameter change is modified.
  final String? gmtModified;
  /// Whether the parameter changing is applied.
  final bool? isApplied;
  /// Changed parameter name.
  final String? name;
  /// The new value of parameter.
  final String? newValue;
  /// The old value of parameter.
  final String? oldValue;

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
      configId: map['configId'] == null ? null : map['configId'] as int,
      gmtCreated: map['gmtCreated'] == null ? null : map['gmtCreated'] as String,
      gmtModified: map['gmtModified'] == null ? null : map['gmtModified'] as String,
      isApplied: map['isApplied'] == null ? null : map['isApplied'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      newValue: map['newValue'] == null ? null : map['newValue'] as String,
      oldValue: map['oldValue'] == null ? null : map['oldValue'] as String,
    );
  }
}

