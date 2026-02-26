// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_plan_restore_config_selected_applications_namespaced_name/restore_plan_restore_config_selected_applications_namespaced_name.dart';

class RestorePlanRestoreConfigSelectedApplications {
  /// A list of namespaced Kubernetes resources.
  /// Structure is documented below.
  final List<RestorePlanRestoreConfigSelectedApplicationsNamespacedName>
      namespacedNames;

  RestorePlanRestoreConfigSelectedApplications({
    required this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespacedNames'] = Input.encodeList<
        RestorePlanRestoreConfigSelectedApplicationsNamespacedName,
        Map<String, dynamic>>(namespacedNames, (value) => value.toMap());
    return map;
  }

  factory RestorePlanRestoreConfigSelectedApplications.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigSelectedApplications(
      namespacedNames: Input.decodeList<
              RestorePlanRestoreConfigSelectedApplicationsNamespacedName>(
          map['namespacedNames'],
          (value) => RestorePlanRestoreConfigSelectedApplicationsNamespacedName
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
