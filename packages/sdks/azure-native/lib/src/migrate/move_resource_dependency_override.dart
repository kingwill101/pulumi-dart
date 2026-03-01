// ignore_for_file: unused_element, unnecessary_cast


/// Defines the dependency override of the move resource.
class MoveResourceDependencyOverride {
  /// Gets or sets the ARM ID of the dependent resource.
  final String? id;
  /// Gets or sets the resource ARM id of either the MoveResource or the resource ARM ID of
  /// the dependent resource.
  final String? targetId;

  /// Creates a new [MoveResourceDependencyOverride].
  /// [id] Gets or sets the ARM ID of the dependent resource.
  /// [targetId] Gets or sets the resource ARM id of either the MoveResource or the resource ARM ID of
  MoveResourceDependencyOverride({
    this.id,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'targetId': ?targetId,
    };
  }

  factory MoveResourceDependencyOverride.fromMap(Map<String, dynamic> map) {
    return MoveResourceDependencyOverride(
      id: map['id'] == null ? null : map['id'] as String,
      targetId: map['targetId'] == null ? null : map['targetId'] as String,
    );
  }
}

