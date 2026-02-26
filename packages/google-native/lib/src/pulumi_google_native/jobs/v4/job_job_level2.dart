/// The experience level associated with the job, such as "Entry Level".
enum JobJobLevel2 {
  jobLevelUnspecified("JOB_LEVEL_UNSPECIFIED"),
  entryLevel("ENTRY_LEVEL"),
  experienced("EXPERIENCED"),
  manager("MANAGER"),
  director("DIRECTOR"),
  executive("EXECUTIVE");

  const JobJobLevel2(this.value);
  final String value;

  static JobJobLevel2 fromValue(String value) {
    for (final item in JobJobLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobJobLevel2 value: $value');
  }
}
