/// The type of the routine.
enum GoogleCloudDatacatalogV1RoutineSpecRoutineType {
  routineTypeUnspecified("ROUTINE_TYPE_UNSPECIFIED"),
  scalarFunction("SCALAR_FUNCTION"),
  procedure("PROCEDURE");

  const GoogleCloudDatacatalogV1RoutineSpecRoutineType(this.value);
  final String value;

  static GoogleCloudDatacatalogV1RoutineSpecRoutineType fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1RoutineSpecRoutineType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1RoutineSpecRoutineType value: $value');
  }
}

