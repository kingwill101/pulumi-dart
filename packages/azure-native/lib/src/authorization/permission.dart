// ignore_for_file: unused_element, unnecessary_cast


/// Role definition permissions.
class Permission {
  /// Allowed actions.
  final List<String>? actions;
  /// Allowed Data actions.
  final List<String>? dataActions;
  /// Denied actions.
  final List<String>? notActions;
  /// Denied Data actions.
  final List<String>? notDataActions;

  /// Creates a new [Permission].
  /// [actions] Allowed actions.
  /// [dataActions] Allowed Data actions.
  /// [notActions] Denied actions.
  /// [notDataActions] Denied Data actions.
  Permission({
    this.actions,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'dataActions': ?dataActions,
      'notActions': ?notActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory Permission.fromMap(Map<String, dynamic> map) {
    return Permission(
      actions: map['actions'] == null ? null : (map['actions'] as List).cast<String>(),
      dataActions: map['dataActions'] == null ? null : (map['dataActions'] as List).cast<String>(),
      notActions: map['notActions'] == null ? null : (map['notActions'] as List).cast<String>(),
      notDataActions: map['notDataActions'] == null ? null : (map['notDataActions'] as List).cast<String>(),
    );
  }
}

