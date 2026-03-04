// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration that services will be excluded when creating cluster.
class ExcludedServicesConfigResponse {
  /// The config id of excluded services.
  final pulumi.Input<String>? excludedServicesConfigId;

  /// The list of excluded services.
  final pulumi.Input<String>? excludedServicesList;

  /// Creates a new [ExcludedServicesConfigResponse].
  /// [excludedServicesConfigId] The config id of excluded services.
  /// [excludedServicesList] The list of excluded services.
  ExcludedServicesConfigResponse({
    this.excludedServicesConfigId,
    this.excludedServicesList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedServicesConfigId': ?excludedServicesConfigId,
      'excludedServicesList': ?excludedServicesList,
    };
  }

  factory ExcludedServicesConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExcludedServicesConfigResponse(
      excludedServicesConfigId: (() {
        final guardedValue = map['excludedServicesConfigId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludedServicesList: (() {
        final guardedValue = map['excludedServicesList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
