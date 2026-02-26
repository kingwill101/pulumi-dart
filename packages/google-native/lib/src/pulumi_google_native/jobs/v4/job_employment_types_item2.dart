enum JobEmploymentTypesItem2 {
  employmentTypeUnspecified("EMPLOYMENT_TYPE_UNSPECIFIED"),
  fullTime("FULL_TIME"),
  partTime("PART_TIME"),
  contractor("CONTRACTOR"),
  contractToHire("CONTRACT_TO_HIRE"),
  temporary("TEMPORARY"),
  intern("INTERN"),
  volunteer("VOLUNTEER"),
  perDiem("PER_DIEM"),
  flyInFlyOut("FLY_IN_FLY_OUT"),
  otherEmploymentType("OTHER_EMPLOYMENT_TYPE");

  const JobEmploymentTypesItem2(this.value);
  final String value;

  static JobEmploymentTypesItem2 fromValue(String value) {
    for (final item in JobEmploymentTypesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobEmploymentTypesItem2 value: $value');
  }
}
