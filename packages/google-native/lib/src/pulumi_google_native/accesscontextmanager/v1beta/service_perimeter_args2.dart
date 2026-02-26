// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'service_perimeter_perimeter_type2.dart';

/// The set of arguments for ServicePerimeter.
class ServicePerimeterArgs2 {
  final Input<String> accessPolicyId;

  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  final Input<String>? description;

  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  final Input<String>? name;

  /// Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  final Input<ServicePerimeterPerimeterType2>? perimeterType;

  /// Human readable title. Must be unique within the Policy.
  final Input<String>? title;

  ServicePerimeterArgs2({
    required this.accessPolicyId,
    this.description,
    this.name,
    this.perimeterType,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final perimeterTypeValue = perimeterType;
    if (perimeterTypeValue != null) {
      map['perimeterType'] =
          Input.mapOptionalInputValue<ServicePerimeterPerimeterType2, String>(
              perimeterTypeValue, (value) => value.value);
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory ServicePerimeterArgs2.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterArgs2(
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      perimeterType: Input.asOptionalInput<ServicePerimeterPerimeterType2>(
          map['perimeterType']),
      title: Input.asOptionalInput<String>(map['title']),
    );
  }
}
