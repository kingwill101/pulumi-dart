// ignore_for_file: unused_element, unnecessary_cast


/// Network manager security user group item.
class SecurityUserGroupItem {
  /// Network manager group Id.
  final String networkGroupId;

  /// Creates a new [SecurityUserGroupItem].
  /// [networkGroupId] Network manager group Id.
  SecurityUserGroupItem({
    required this.networkGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupId': networkGroupId,
    };
  }

  factory SecurityUserGroupItem.fromMap(Map<String, dynamic> map) {
    return SecurityUserGroupItem(
      networkGroupId: map['networkGroupId'] as String,
    );
  }
}

