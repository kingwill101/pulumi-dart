// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_perimeter_type_accesscontextmanager_v1beta.dart';

/// {@template pulumi_accesscontextmanager_v1beta_service_perimeter_accesscontextmanager_v1beta_args_doc}
/// The set of arguments for ServicePerimeter.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1beta_service_perimeter_accesscontextmanager_v1beta_args_doc}
class ServicePerimeterAccesscontextmanagerV1betaArgs {
  final pulumi.Input<String> accessPolicyId;
  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  final pulumi.Input<String>? description;
  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  final pulumi.Input<String>? name;
  /// Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  final pulumi.Input<ServicePerimeterPerimeterTypeAccesscontextmanagerV1beta>? perimeterType;
  /// Human readable title. Must be unique within the Policy.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterAccesscontextmanagerV1betaArgs].
  /// [accessPolicyId] Required.
  /// [description] Description of the `ServicePerimeter` and its use. Does not affect behavior.
  /// [name] Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  /// [perimeterType] Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  /// [title] Human readable title. Must be unique within the Policy.
  ServicePerimeterAccesscontextmanagerV1betaArgs({
    required String accessPolicyId,
    String? description,
    String? name,
    ServicePerimeterPerimeterTypeAccesscontextmanagerV1beta? perimeterType,
    String? title,
  }) :
      accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      perimeterType = pulumi.Input.asOptionalInput<ServicePerimeterPerimeterTypeAccesscontextmanagerV1beta>(perimeterType),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': accessPolicyId,
      'description': ?description,
      'name': ?name,
      'perimeterType': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterPerimeterTypeAccesscontextmanagerV1beta, String>(perimeterType, (value) => value.value),
      'title': ?title,
    };
  }

  factory ServicePerimeterAccesscontextmanagerV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterAccesscontextmanagerV1betaArgs(
      accessPolicyId: map['accessPolicyId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      perimeterType: map['perimeterType'] == null ? null : ServicePerimeterPerimeterTypeAccesscontextmanagerV1beta.fromValue(map['perimeterType'] as String),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

