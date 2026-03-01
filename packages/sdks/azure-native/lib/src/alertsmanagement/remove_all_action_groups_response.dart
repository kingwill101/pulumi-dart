// ignore_for_file: unused_element, unnecessary_cast


/// Indicates if all action groups should be removed.
class RemoveAllActionGroupsResponse {
  /// Action that should be applied.
  /// Expected value is 'RemoveAllActionGroups'.
  final String actionType;

  /// Creates a new [RemoveAllActionGroupsResponse].
  /// [actionType] Action that should be applied.
  RemoveAllActionGroupsResponse({
    required this.actionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
    };
  }

  factory RemoveAllActionGroupsResponse.fromMap(Map<String, dynamic> map) {
    return RemoveAllActionGroupsResponse(
      actionType: map['actionType'] as String,
    );
  }
}

