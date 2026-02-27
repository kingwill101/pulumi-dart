// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Service.
class ServiceProjectsArgs {
  /// Beta
  /// If `true`, the usage of the service to be disabled will be checked and an error
  /// will be returned if the service to be disabled has usage in last 30 days.
  final pulumi.Input<bool>? checkIfServiceHasUsageOnDestroy;

  /// If `true`, services that are enabled
  /// and which depend on this service should also be disabled when this service is
  /// destroyed. If `false` or unset, an error will be generated if any enabled
  /// services depend on this service when destroying it.
  final pulumi.Input<bool>? disableDependentServices;
  final pulumi.Input<bool>? disableOnDestroy;

  /// The project ID. If not provided, the provider project
  /// is used.
  final pulumi.Input<String>? project;

  /// The service to enable.
  final pulumi.Input<String> service;

  ServiceProjectsArgs({
    this.checkIfServiceHasUsageOnDestroy,
    this.disableDependentServices,
    this.disableOnDestroy,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkIfServiceHasUsageOnDestroyValue =
        checkIfServiceHasUsageOnDestroy;
    if (checkIfServiceHasUsageOnDestroyValue != null) {
      map['checkIfServiceHasUsageOnDestroy'] =
          checkIfServiceHasUsageOnDestroyValue;
    }
    final disableDependentServicesValue = disableDependentServices;
    if (disableDependentServicesValue != null) {
      map['disableDependentServices'] = disableDependentServicesValue;
    }
    final disableOnDestroyValue = disableOnDestroy;
    if (disableOnDestroyValue != null) {
      map['disableOnDestroy'] = disableOnDestroyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory ServiceProjectsArgs.fromMap(Map<String, dynamic> map) {
    return ServiceProjectsArgs(
      checkIfServiceHasUsageOnDestroy: pulumi.Input.asOptionalInput<bool>(
          map['checkIfServiceHasUsageOnDestroy']),
      disableDependentServices:
          pulumi.Input.asOptionalInput<bool>(map['disableDependentServices']),
      disableOnDestroy:
          pulumi.Input.asOptionalInput<bool>(map['disableOnDestroy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
