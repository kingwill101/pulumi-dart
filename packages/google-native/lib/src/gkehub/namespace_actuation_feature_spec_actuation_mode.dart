/// actuation_mode controls the behavior of the controller
enum NamespaceActuationFeatureSpecActuationMode {
  actuationModeUnspecified("ACTUATION_MODE_UNSPECIFIED"),
  actuationModeCreateAndDeleteIfCreated(
    "ACTUATION_MODE_CREATE_AND_DELETE_IF_CREATED",
  ),
  actuationModeAddAndRemoveFleetLabels(
    "ACTUATION_MODE_ADD_AND_REMOVE_FLEET_LABELS",
  );

  const NamespaceActuationFeatureSpecActuationMode(this.value);
  final String value;

  static NamespaceActuationFeatureSpecActuationMode fromValue(String value) {
    for (final item in NamespaceActuationFeatureSpecActuationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NamespaceActuationFeatureSpecActuationMode value: $value',
    );
  }
}
