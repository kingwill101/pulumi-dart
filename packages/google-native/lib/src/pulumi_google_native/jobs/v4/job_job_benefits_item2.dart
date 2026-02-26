enum JobJobBenefitsItem2 {
  jobBenefitUnspecified("JOB_BENEFIT_UNSPECIFIED"),
  childCare("CHILD_CARE"),
  dental("DENTAL"),
  domesticPartner("DOMESTIC_PARTNER"),
  flexibleHours("FLEXIBLE_HOURS"),
  medical("MEDICAL"),
  lifeInsurance("LIFE_INSURANCE"),
  parentalLeave("PARENTAL_LEAVE"),
  retirementPlan("RETIREMENT_PLAN"),
  sickDays("SICK_DAYS"),
  vacation("VACATION"),
  vision("VISION");

  const JobJobBenefitsItem2(this.value);
  final String value;

  static JobJobBenefitsItem2 fromValue(String value) {
    for (final item in JobJobBenefitsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobJobBenefitsItem2 value: $value');
  }
}
