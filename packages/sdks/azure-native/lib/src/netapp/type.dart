/// Type of quota
enum Type {
  valueDefaultUserQuota("DefaultUserQuota"),
  valueDefaultGroupQuota("DefaultGroupQuota"),
  valueIndividualUserQuota("IndividualUserQuota"),
  valueIndividualGroupQuota("IndividualGroupQuota");

  const Type(this.wireValue);
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
