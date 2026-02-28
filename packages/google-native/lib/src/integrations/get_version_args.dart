// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String> integrationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArgs].
  /// [integrationId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionArgs({
    required String integrationId,
    required String location,
    required String productId,
    String? project,
    required String versionId,
  })  : integrationId = pulumi.Input.asInput<String>(integrationId),
        location = pulumi.Input.asInput<String>(location),
        productId = pulumi.Input.asInput<String>(productId),
        project = pulumi.Input.asOptionalInput<String>(project),
        versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['integrationId'] = integrationId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      integrationId: map['integrationId'] as String,
      location: map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
