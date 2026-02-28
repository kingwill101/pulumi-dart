// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_auth_config_args_doc}
/// Arguments for getAuthConfig.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_auth_config_args_doc}
class GetAuthConfigArgs {
  final pulumi.Input<String> authConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAuthConfigArgs].
  /// [authConfigId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  GetAuthConfigArgs({
    required String authConfigId,
    required String location,
    required String productId,
    String? project,
  })  : authConfigId = pulumi.Input.asInput<String>(authConfigId),
        location = pulumi.Input.asInput<String>(location),
        productId = pulumi.Input.asInput<String>(productId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authConfigId'] = authConfigId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthConfigArgs(
      authConfigId: map['authConfigId'] as String,
      location: map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
