// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateMaintenanceOption {
  final pulumi.Input<String> autoRecovery;

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
      autoRecovery: pulumi.Input.fromValue(map['autoRecovery'] as String),
    );
  }
}

