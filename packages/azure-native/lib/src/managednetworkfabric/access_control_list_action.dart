// ignore_for_file: unused_element, unnecessary_cast


/// Action that need to performed.
class AccessControlListAction {
  /// Name of the counter block to get match count information.
  final String? counterName;
  /// Type of actions that can be performed.
  final String? type;

  /// Creates a new [AccessControlListAction].
  /// [counterName] Name of the counter block to get match count information.
  /// [type] Type of actions that can be performed.
  AccessControlListAction({
    this.counterName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterName': ?counterName,
      'type': ?type,
    };
  }

  factory AccessControlListAction.fromMap(Map<String, dynamic> map) {
    return AccessControlListAction(
      counterName: map['counterName'] == null ? null : map['counterName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

