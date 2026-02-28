// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_organizations_deidentify_template_args_doc}
/// Arguments for getOrganizationsDeidentifyTemplate.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_organizations_deidentify_template_args_doc}
class GetOrganizationsDeidentifyTemplateArgs {
  final pulumi.Input<String> deidentifyTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationsDeidentifyTemplateArgs].
  /// [deidentifyTemplateId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationsDeidentifyTemplateArgs({
    required String deidentifyTemplateId,
    required String location,
    required String organizationId,
  })  : deidentifyTemplateId =
            pulumi.Input.asInput<String>(deidentifyTemplateId),
        location = pulumi.Input.asInput<String>(location),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deidentifyTemplateId'] = deidentifyTemplateId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationsDeidentifyTemplateArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationsDeidentifyTemplateArgs(
      deidentifyTemplateId: map['deidentifyTemplateId'] as String,
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
