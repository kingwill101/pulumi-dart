// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionManualScaling {
  /// Number of instances to assign to the service at the start.
  /// **Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
  /// Modules API set_num_instances() you must use `lifecycle.ignore_changes = [<span pulumi-lang-nodejs=""manualScaling"" pulumi-lang-dotnet=""ManualScaling"" pulumi-lang-go=""manualScaling"" pulumi-lang-python=""manual_scaling"" pulumi-lang-yaml=""manualScaling"" pulumi-lang-java=""manualScaling"">"manual_scaling"</span>[0].instances]` to prevent drift detection.
  final int instances;

  StandardAppVersionManualScaling({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instances'] = instances;
    return map;
  }

  factory StandardAppVersionManualScaling.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionManualScaling(
      instances: map['instances'] as int,
    );
  }
}
