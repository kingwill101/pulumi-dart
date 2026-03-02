// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventRuleOpenApiParameter {
  /// The API name.
  final pulumi.Input<String>? action;
  /// (Available since v1.211.1) The ARN of the API operation.
  final pulumi.Input<String>? arn;
  /// The ID of the recipient that receives alert notifications sent by an API callback.
  final pulumi.Input<String>? openApiParametersId;
  /// The ID of the cloud service to which the API operation belongs.
  final pulumi.Input<String>? product;
  /// The region where the resource resides.
  final pulumi.Input<String>? region;
  /// The name of the role.
  final pulumi.Input<String>? role;
  /// The version of the API.
  final pulumi.Input<String>? version;

  /// Creates a new [EventRuleOpenApiParameter].
  /// [action] The API name.
  /// [arn] (Available since v1.211.1) The ARN of the API operation.
  /// [openApiParametersId] The ID of the recipient that receives alert notifications sent by an API callback.
  /// [product] The ID of the cloud service to which the API operation belongs.
  /// [region] The region where the resource resides.
  /// [role] The name of the role.
  /// [version] The version of the API.
  EventRuleOpenApiParameter({
    this.action,
    this.arn,
    this.openApiParametersId,
    this.product,
    this.region,
    this.role,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'arn': ?arn,
      'openApiParametersId': ?openApiParametersId,
      'product': ?product,
      'region': ?region,
      'role': ?role,
      'version': ?version,
    };
  }

  factory EventRuleOpenApiParameter.fromMap(Map<String, dynamic> map) {
    return EventRuleOpenApiParameter(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      openApiParametersId: map['openApiParametersId'] == null ? null : (map['openApiParametersId'] as String).input(),
      product: map['product'] == null ? null : (map['product'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

