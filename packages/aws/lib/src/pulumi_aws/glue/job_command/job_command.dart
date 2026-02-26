// ignore_for_file: unused_element, unnecessary_cast

class JobCommand {
  /// The name of the job command. Defaults to <span pulumi-lang-nodejs="`glueetl`" pulumi-lang-dotnet="`Glueetl`" pulumi-lang-go="`glueetl`" pulumi-lang-python="`glueetl`" pulumi-lang-yaml="`glueetl`" pulumi-lang-java="`glueetl`">`glueetl`</span>. Use <span pulumi-lang-nodejs="`pythonshell`" pulumi-lang-dotnet="`Pythonshell`" pulumi-lang-go="`pythonshell`" pulumi-lang-python="`pythonshell`" pulumi-lang-yaml="`pythonshell`" pulumi-lang-java="`pythonshell`">`pythonshell`</span> for Python Shell Job Type, <span pulumi-lang-nodejs="`glueray`" pulumi-lang-dotnet="`Glueray`" pulumi-lang-go="`glueray`" pulumi-lang-python="`glueray`" pulumi-lang-yaml="`glueray`" pulumi-lang-java="`glueray`">`glueray`</span> for Ray Job Type, or <span pulumi-lang-nodejs="`gluestreaming`" pulumi-lang-dotnet="`Gluestreaming`" pulumi-lang-go="`gluestreaming`" pulumi-lang-python="`gluestreaming`" pulumi-lang-yaml="`gluestreaming`" pulumi-lang-java="`gluestreaming`">`gluestreaming`</span> for Streaming Job Type. <span pulumi-lang-nodejs="`maxCapacity`" pulumi-lang-dotnet="`MaxCapacity`" pulumi-lang-go="`maxCapacity`" pulumi-lang-python="`max_capacity`" pulumi-lang-yaml="`maxCapacity`" pulumi-lang-java="`maxCapacity`">`max_capacity`</span> needs to be set if <span pulumi-lang-nodejs="`pythonshell`" pulumi-lang-dotnet="`Pythonshell`" pulumi-lang-go="`pythonshell`" pulumi-lang-python="`pythonshell`" pulumi-lang-yaml="`pythonshell`" pulumi-lang-java="`pythonshell`">`pythonshell`</span> is chosen.
  final String? name;

  /// The Python version being used to execute a Python shell job. Allowed values are 2, 3 or 3.9. Version 3 refers to Python 3.11 when <span pulumi-lang-nodejs="`glueVersion`" pulumi-lang-dotnet="`GlueVersion`" pulumi-lang-go="`glueVersion`" pulumi-lang-python="`glue_version`" pulumi-lang-yaml="`glueVersion`" pulumi-lang-java="`glueVersion`">`glue_version`</span> is set to 5.0.
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
