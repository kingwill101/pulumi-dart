// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_selected_applications_namespaced_name.dart';

class RestorePlanRestoreConfigSelectedApplications {
  /// A list of namespaced Kubernetes resources.
  /// Structure is documented below.
  final List<RestorePlanRestoreConfigSelectedApplicationsNamespacedName>
  namespacedNames;

  /// Creates a new [RestorePlanRestoreConfigSelectedApplications].
  /// [namespacedNames] A list of namespaced Kubernetes resources.
  RestorePlanRestoreConfigSelectedApplications({required this.namespacedNames});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedNames':
          pulumi.Input.encodeList<
            RestorePlanRestoreConfigSelectedApplicationsNamespacedName,
            Map<String, dynamic>
          >(namespacedNames, (value) => value.toMap()),
    };
  }

  factory RestorePlanRestoreConfigSelectedApplications.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestorePlanRestoreConfigSelectedApplications(
      namespacedNames:
          pulumi.Input.decodeList<
            RestorePlanRestoreConfigSelectedApplicationsNamespacedName
          >(
            map['namespacedNames'],
            (value) =>
                RestorePlanRestoreConfigSelectedApplicationsNamespacedName.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
