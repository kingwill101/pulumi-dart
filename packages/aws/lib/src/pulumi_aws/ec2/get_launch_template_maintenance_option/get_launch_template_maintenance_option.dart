// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateMaintenanceOption {
  final String autoRecovery;

  GetLaunchTemplateMaintenanceOption({
    required this.autoRecovery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoRecovery'] = autoRecovery;
    return map;
  }

  factory GetLaunchTemplateMaintenanceOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateMaintenanceOption(
      autoRecovery: map['autoRecovery'] as String,
    );
  }
}
