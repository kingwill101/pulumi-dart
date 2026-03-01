/// Type of quota
enum Type {
  valueDefaultUserQuota("DefaultUserQuota"),
  valueDefaultGroupQuota("DefaultGroupQuota"),
  valueIndividualUserQuota("IndividualUserQuota"),
  valueIndividualGroupQuota("IndividualGroupQuota");

  const Type(this.value);
  final String value;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}

