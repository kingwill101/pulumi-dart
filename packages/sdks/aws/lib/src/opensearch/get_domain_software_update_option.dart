// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainSoftwareUpdateOption {
  /// Enabled or disabled.
  final pulumi.Input<bool> autoSoftwareUpdateEnabled;

  /// Creates a new [GetDomainSoftwareUpdateOption].
  /// [autoSoftwareUpdateEnabled] Enabled or disabled.
  GetDomainSoftwareUpdateOption({
    required this.autoSoftwareUpdateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSoftwareUpdateEnabled': autoSoftwareUpdateEnabled,
    };
  }

  factory GetDomainSoftwareUpdateOption.fromMap(Map<String, dynamic> map) {
    return GetDomainSoftwareUpdateOption(
      autoSoftwareUpdateEnabled: pulumi.Input.fromValue(map['autoSoftwareUpdateEnabled'] as bool),
    );
  }
}

