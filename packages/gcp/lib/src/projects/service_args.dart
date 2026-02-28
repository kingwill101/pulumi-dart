// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_projects_service_service_args_doc}
class ServiceArgs {
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

  /// Creates a new [ServiceArgs].
  /// [checkIfServiceHasUsageOnDestroy] Beta
  /// [disableDependentServices] If `true`, services that are enabled
  /// [disableOnDestroy] Optional.
  /// [project] The project ID. If not provided, the provider project
  /// [service] The service to enable.
  ServiceArgs({
    bool? checkIfServiceHasUsageOnDestroy,
    bool? disableDependentServices,
    bool? disableOnDestroy,
    String? project,
    required String service,
  })  : checkIfServiceHasUsageOnDestroy =
            pulumi.Input.asOptionalInput<bool>(checkIfServiceHasUsageOnDestroy),
        disableDependentServices =
            pulumi.Input.asOptionalInput<bool>(disableDependentServices),
        disableOnDestroy = pulumi.Input.asOptionalInput<bool>(disableOnDestroy),
        project = pulumi.Input.asOptionalInput<String>(project),
        service = pulumi.Input.asInput<String>(service);

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

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      checkIfServiceHasUsageOnDestroy:
          map['checkIfServiceHasUsageOnDestroy'] == null
              ? null
              : map['checkIfServiceHasUsageOnDestroy'] as bool,
      disableDependentServices: map['disableDependentServices'] == null
          ? null
          : map['disableDependentServices'] as bool,
      disableOnDestroy: map['disableOnDestroy'] == null
          ? null
          : map['disableOnDestroy'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
    );
  }
}
