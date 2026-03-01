// ignore_for_file: unused_element, unnecessary_cast


/// The set of data plane operations permitted through this Role Definition.
class Permission {
  /// An array of data actions that are allowed.
  final List<String>? dataActions;
  /// The id for the permission.
  final String? id;
  /// An array of data actions that are denied.
  final List<String>? notDataActions;

  /// Creates a new [Permission].
  /// [dataActions] An array of data actions that are allowed.
  /// [id] The id for the permission.
  /// [notDataActions] An array of data actions that are denied.
  Permission({
    this.dataActions,
    this.id,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataActions': ?dataActions,
      'id': ?id,
      'notDataActions': ?notDataActions,
    };
  }

  factory Permission.fromMap(Map<String, dynamic> map) {
    return Permission(
      dataActions: map['dataActions'] == null ? null : (map['dataActions'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      notDataActions: map['notDataActions'] == null ? null : (map['notDataActions'] as List).cast<String>(),
    );
  }
}

