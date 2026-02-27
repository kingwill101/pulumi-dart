// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_perimeters_service_perimeter/service_perimeters_service_perimeter.dart';

/// The set of arguments for ServicePerimeters.
class ServicePerimetersArgs {
  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  final pulumi.Input<String> parent;

  /// The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimetersServicePerimeter>>?
      servicePerimeters;

  ServicePerimetersArgs({
    required this.parent,
    this.servicePerimeters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    final servicePerimetersValue = servicePerimeters;
    if (servicePerimetersValue != null) {
      map['servicePerimeters'] = pulumi.Input.mapOptionalInputValue<
              List<ServicePerimetersServicePerimeter>,
              List<Map<String, dynamic>>>(
          servicePerimetersValue,
          (value) => pulumi.Input.encodeList<ServicePerimetersServicePerimeter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ServicePerimetersArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersArgs(
      parent: pulumi.Input.asInput<String>(map['parent']),
      servicePerimeters:
          pulumi.Input.asOptionalInput<List<ServicePerimetersServicePerimeter>>(
              map['servicePerimeters']),
    );
  }
}
