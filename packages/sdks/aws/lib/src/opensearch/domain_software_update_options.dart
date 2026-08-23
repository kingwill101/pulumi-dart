// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSoftwareUpdateOptions {
  /// Whether automatic service software updates are enabled for the domain. Defaults to `false`.
  final pulumi.Input<bool>? autoSoftwareUpdateEnabled;

  /// Creates a new [DomainSoftwareUpdateOptions].
  /// [autoSoftwareUpdateEnabled] Whether automatic service software updates are enabled for the domain. Defaults to `false`.
  const DomainSoftwareUpdateOptions({
    this.autoSoftwareUpdateEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSoftwareUpdateEnabled': ?autoSoftwareUpdateEnabled,
    };
  }

  factory DomainSoftwareUpdateOptions.fromMap(Map<String, dynamic> map) {
    return DomainSoftwareUpdateOptions(
      autoSoftwareUpdateEnabled: (() { final guardedValue = map['autoSoftwareUpdateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
