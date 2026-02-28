// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1beta_gateway_apigateway_v1beta_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1beta_gateway_apigateway_v1beta_args_doc}
class GatewayApigatewayV1betaArgs {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  final pulumi.Input<String> apiConfig;
  /// Optional. Display name.
  final pulumi.Input<String>? displayName;
  /// Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource.
  final pulumi.Input<String> gatewayId;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [GatewayApigatewayV1betaArgs].
  /// [apiConfig] Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  /// [displayName] Optional. Display name.
  /// [gatewayId] Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [project] Optional.
  GatewayApigatewayV1betaArgs({
    required String apiConfig,
    String? displayName,
    required String gatewayId,
    Map<String, String>? labels,
    String? location,
    String? project,
  }) :
      apiConfig = pulumi.Input.asInput<String>(apiConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': apiConfig,
      'displayName': ?displayName,
      'gatewayId': gatewayId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GatewayApigatewayV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GatewayApigatewayV1betaArgs(
      apiConfig: map['apiConfig'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gatewayId: map['gatewayId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

