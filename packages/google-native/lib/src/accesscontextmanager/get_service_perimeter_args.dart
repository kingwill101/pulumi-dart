// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_get_service_perimeter_args_doc}
/// Arguments for getServicePerimeter.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_get_service_perimeter_args_doc}
class GetServicePerimeterArgs {
  final pulumi.Input<String> accessPolicyId;
  final pulumi.Input<String> servicePerimeterId;

  /// Creates a new [GetServicePerimeterArgs].
  /// [accessPolicyId] Required.
  /// [servicePerimeterId] Required.
  GetServicePerimeterArgs({
    required String accessPolicyId,
    required String servicePerimeterId,
  }) : accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId),
       servicePerimeterId = pulumi.Input.asInput<String>(servicePerimeterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'servicePerimeterId': servicePerimeterId,
    };
  }

  factory GetServicePerimeterArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePerimeterArgs(
      accessPolicyId: map['accessPolicyId'] as String,
      servicePerimeterId: map['servicePerimeterId'] as String,
    );
  }
}
