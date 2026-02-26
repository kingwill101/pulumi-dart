// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Service.
class ServiceArgs5 {
  /// Beta
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the usage of the service to be disabled will be checked and an error
  /// will be returned if the service to be disabled has usage in last 30 days.
  final Input<bool>? checkIfServiceHasUsageOnDestroy;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, services that are enabled
  /// and which depend on this service should also be disabled when this service is
  /// destroyed. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> or unset, an error will be generated if any enabled
  /// services depend on this service when destroying it.
  final Input<bool>? disableDependentServices;
  final Input<bool>? disableOnDestroy;

  /// The project ID. If not provided, the provider project
  /// is used.
  final Input<String>? project;

  /// The service to enable.
  final Input<String> service;

  ServiceArgs5({
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

  factory ServiceArgs5.fromMap(Map<String, dynamic> map) {
    return ServiceArgs5(
      checkIfServiceHasUsageOnDestroy:
          Input.asOptionalInput<bool>(map['checkIfServiceHasUsageOnDestroy']),
      disableDependentServices:
          Input.asOptionalInput<bool>(map['disableDependentServices']),
      disableOnDestroy: Input.asOptionalInput<bool>(map['disableOnDestroy']),
      project: Input.asOptionalInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
