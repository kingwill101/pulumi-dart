enum JobDegreeTypesItemJobsV4 {
  degreeTypeUnspecified("DEGREE_TYPE_UNSPECIFIED"),
  primaryEducation("PRIMARY_EDUCATION"),
  lowerSecondaryEducation("LOWER_SECONDARY_EDUCATION"),
  upperSecondaryEducation("UPPER_SECONDARY_EDUCATION"),
  adultRemedialEducation("ADULT_REMEDIAL_EDUCATION"),
  associatesOrEquivalent("ASSOCIATES_OR_EQUIVALENT"),
  bachelorsOrEquivalent("BACHELORS_OR_EQUIVALENT"),
  mastersOrEquivalent("MASTERS_OR_EQUIVALENT"),
  doctoralOrEquivalent("DOCTORAL_OR_EQUIVALENT");

  const JobDegreeTypesItemJobsV4(this.value);
  final String value;

  static JobDegreeTypesItemJobsV4 fromValue(String value) {
    for (final item in JobDegreeTypesItemJobsV4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobDegreeTypesItemJobsV4 value: $value');
  }
}
