// ignore_for_file: unused_element, unnecessary_cast

class JobCommand {
  /// The name of the job command. Defaults to `glueetl`. Use `pythonshell` for Python Shell Job Type, `glueray` for Ray Job Type, or `gluestreaming` for Streaming Job Type. `max_capacity` needs to be set if `pythonshell` is chosen.
  final String? name;

  /// The Python version being used to execute a Python shell job. Allowed values are 2, 3 or 3.9. Version 3 refers to Python 3.11 when `glue_version` is set to 5.0.
  final String? pythonVersion;

  /// In Ray jobs, runtime is used to specify the versions of Ray, Python and additional libraries available in your environment. This field is not used in other job types. For supported runtime environment values, see [Working with Ray jobs](https://docs.aws.amazon.com/glue/latest/dg/ray-jobs-section.html#author-job-ray-runtimes) in the Glue Developer Guide.
  final String? runtime;

  /// Specifies the S3 path to a script that executes a job.
  final String scriptLocation;

  JobCommand({
    this.name,
    this.pythonVersion,
    this.runtime,
    required this.scriptLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pythonVersionValue = pythonVersion;
    if (pythonVersionValue != null) {
      map['pythonVersion'] = pythonVersionValue;
    }
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = runtimeValue;
    }
    map['scriptLocation'] = scriptLocation;
    return map;
  }

  factory JobCommand.fromMap(Map<String, dynamic> map) {
    return JobCommand(
      name: map['name'] == null ? null : map['name'] as String,
      pythonVersion:
          map['pythonVersion'] == null ? null : map['pythonVersion'] as String,
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
      scriptLocation: map['scriptLocation'] as String,
    );
  }
}
