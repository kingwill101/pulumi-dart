/// The experience level associated with the job, such as "Entry Level".
enum JobJobLevelJobsV4 {
  jobLevelUnspecified("JOB_LEVEL_UNSPECIFIED"),
  entryLevel("ENTRY_LEVEL"),
  experienced("EXPERIENCED"),
  manager("MANAGER"),
  director("DIRECTOR"),
  executive("EXECUTIVE");

  const JobJobLevelJobsV4(this.value);
  final String value;

  static JobJobLevelJobsV4 fromValue(String value) {
    for (final item in JobJobLevelJobsV4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobJobLevelJobsV4 value: $value');
  }
}

