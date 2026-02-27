// ignore_for_file: unused_element, unnecessary_cast

/// Application related details of a job posting.
class ApplicationInfoResponseJobsV4 {
  /// Use this field to specify email address(es) to which resumes or applications can be sent. The maximum number of allowed characters for each entry is 255.
  final List<String> emails;

  /// Use this field to provide instructions, such as "Mail your application to ...", that a candidate can follow to apply for the job. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 3,000.
  final String instruction;

  /// Use this URI field to direct an applicant to a website, for example to link to an online application form. The maximum number of allowed characters for each entry is 2,000.
  final List<String> uris;

  ApplicationInfoResponseJobsV4({
    required this.emails,
    required this.instruction,
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emails'] = emails;
    map['instruction'] = instruction;
    map['uris'] = uris;
    return map;
  }

  factory ApplicationInfoResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return ApplicationInfoResponseJobsV4(
      emails: (map['emails'] as List).cast<String>(),
      instruction: map['instruction'] as String,
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}
