// ignore_for_file: unused_element, unnecessary_cast


class NoneAuthTypeWorkspaceConnectionProperties {
  /// Authentication type of the connection target
  /// Expected value is 'None'.
  final String authType;
  /// Category of the connection
  final String? category;
  final String? expiryTime;
  final bool? isSharedToAll;
  /// Store user metadata for this connection
  final Map<String, String>? metadata;
  final List<String>? sharedUserList;
  final String? target;
  /// Value details of the workspace connection.
  final String? value;
  /// format for the workspace connection value
  final String? valueFormat;

  /// Creates a new [NoneAuthTypeWorkspaceConnectionProperties].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [expiryTime] Optional.
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [value] Value details of the workspace connection.
  /// [valueFormat] format for the workspace connection value
  NoneAuthTypeWorkspaceConnectionProperties({
    required this.authType,
    this.category,
    this.expiryTime,
    this.isSharedToAll,
    this.metadata,
    this.sharedUserList,
    this.target,
    this.value,
    this.valueFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'category': ?category,
      'expiryTime': ?expiryTime,
      'isSharedToAll': ?isSharedToAll,
      'metadata': ?metadata,
      'sharedUserList': ?sharedUserList,
      'target': ?target,
      'value': ?value,
      'valueFormat': ?valueFormat,
    };
  }

  factory NoneAuthTypeWorkspaceConnectionProperties.fromMap(Map<String, dynamic> map) {
    return NoneAuthTypeWorkspaceConnectionProperties(
      authType: map['authType'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      isSharedToAll: map['isSharedToAll'] == null ? null : map['isSharedToAll'] as bool,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      sharedUserList: map['sharedUserList'] == null ? null : (map['sharedUserList'] as List).cast<String>(),
      target: map['target'] == null ? null : map['target'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueFormat: map['valueFormat'] == null ? null : map['valueFormat'] as String,
    );
  }
}

