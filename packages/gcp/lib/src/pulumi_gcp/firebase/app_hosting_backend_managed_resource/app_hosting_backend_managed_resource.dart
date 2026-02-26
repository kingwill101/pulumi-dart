// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_hosting_backend_managed_resource_run_service/app_hosting_backend_managed_resource_run_service.dart';

class AppHostingBackendManagedResource {
  /// (Output)
  /// A managed Cloud Run
  /// [<span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span>](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service).
  /// Structure is documented below.
  final List<AppHostingBackendManagedResourceRunService>? runServices;

  AppHostingBackendManagedResource({
    this.runServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final runServicesValue = runServices;
    if (runServicesValue != null) {
      map['runServices'] = Input.encodeList<
          AppHostingBackendManagedResourceRunService,
          Map<String, dynamic>>(runServicesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppHostingBackendManagedResource.fromMap(Map<String, dynamic> map) {
    return AppHostingBackendManagedResource(
      runServices: map['runServices'] == null
          ? null
          : Input.decodeList<AppHostingBackendManagedResourceRunService>(
              map['runServices'],
              (value) => AppHostingBackendManagedResourceRunService.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
