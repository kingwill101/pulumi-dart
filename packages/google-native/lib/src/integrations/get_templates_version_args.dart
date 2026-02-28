// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_templates_version_args_doc}
/// Arguments for getTemplatesVersion.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_templates_version_args_doc}
class GetTemplatesVersionArgs {
  final pulumi.Input<String> integrationtemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetTemplatesVersionArgs].
  /// [integrationtemplateId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetTemplatesVersionArgs({
    required String integrationtemplateId,
    required String location,
    required String productId,
    String? project,
    required String versionId,
  })  : integrationtemplateId =
            pulumi.Input.asInput<String>(integrationtemplateId),
        location = pulumi.Input.asInput<String>(location),
        productId = pulumi.Input.asInput<String>(productId),
        project = pulumi.Input.asOptionalInput<String>(project),
        versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['integrationtemplateId'] = integrationtemplateId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetTemplatesVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplatesVersionArgs(
      integrationtemplateId: map['integrationtemplateId'] as String,
      location: map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
