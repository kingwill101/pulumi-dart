// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_apigateway_gateway_gateway_args_doc}
class GatewayArgs {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// When changing api configs please ensure the new config is a new resource and the
  /// lifecycle rule `create_before_destroy` is set.
  final pulumi.Input<String> apiConfig;

  /// A user-visible name for the API.
  final pulumi.Input<String>? displayName;

  /// Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  final pulumi.Input<String> gatewayId;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the gateway for the API.
  final pulumi.Input<String>? region;

  /// Creates a new [GatewayArgs].
  /// [apiConfig] Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}.
  /// [displayName] A user-visible name for the API.
  /// [gatewayId] Identifier to assign to the Gateway. Must be unique within scope of the parent resource(project).
  /// [labels] Resource labels to represent user-provided metadata.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the gateway for the API.
  GatewayArgs({
    required String apiConfig,
    String? displayName,
    required String gatewayId,
    Map<String, String>? labels,
    String? project,
    String? region,
  }) : apiConfig = pulumi.Input.asInput<String>(apiConfig),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       gatewayId = pulumi.Input.asInput<String>(gatewayId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfig': apiConfig,
      'displayName': ?displayName,
      'gatewayId': gatewayId,
      'labels': ?labels,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      apiConfig: map['apiConfig'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      gatewayId: map['gatewayId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
