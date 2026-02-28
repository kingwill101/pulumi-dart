// ignore_for_file: unused_element, unnecessary_cast


class GetLaunchTemplateMaintenanceOption {
  final String autoRecovery;

  /// Creates a new [GetLaunchTemplateMaintenanceOption].
  /// [autoRecovery] Required.
  GetLaunchTemplateMaintenanceOption({
    required this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecovery': autoRecovery,
    };
  }

  factory GetLaunchTemplateMaintenanceOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateMaintenanceOption(
      autoRecovery: map['autoRecovery'] as String,
    );
  }
}

