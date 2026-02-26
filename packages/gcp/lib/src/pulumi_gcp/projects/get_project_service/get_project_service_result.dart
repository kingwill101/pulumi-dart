// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProjectService.
class GetProjectServiceResult {
  final bool checkIfServiceHasUsageOnDestroy;
  final bool disableDependentServices;
  final bool disableOnDestroy;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;
  final String service;

  GetProjectServiceResult({
    required this.checkIfServiceHasUsageOnDestroy,
    required this.disableDependentServices,
    required this.disableOnDestroy,
    required this.id,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkIfServiceHasUsageOnDestroy'] = checkIfServiceHasUsageOnDestroy;
    map['disableDependentServices'] = disableDependentServices;
    map['disableOnDestroy'] = disableOnDestroy;
    map['id'] = id;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory GetProjectServiceResult.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceResult(
      checkIfServiceHasUsageOnDestroy:
          map['checkIfServiceHasUsageOnDestroy'] as bool,
      disableDependentServices: map['disableDependentServices'] as bool,
      disableOnDestroy: map['disableOnDestroy'] as bool,
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
    );
  }
}
