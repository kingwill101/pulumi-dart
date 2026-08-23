/// The type of constraint. Use ``distinctInstance`` to ensure that each task in a particular group is running on a different container instance. Use ``memberOf`` to restrict the selection to a group of valid candidates.
enum PlacementConstraintType {
  distinctInstance("distinctInstance"),
  memberOf("memberOf");

  const PlacementConstraintType(this.wireValue);
  final String wireValue;

  static PlacementConstraintType fromValue(String value) {
    for (final item in PlacementConstraintType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementConstraintType value: $value');
  }
}
