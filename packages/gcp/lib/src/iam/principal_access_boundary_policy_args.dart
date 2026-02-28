// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_access_boundary_policy_details.dart';

/// {@template pulumi_iam_principal_access_boundary_policy_principal_access_boundary_policy_args_doc}
/// The set of arguments for PrincipalAccessBoundaryPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_principal_access_boundary_policy_principal_access_boundary_policy_args_doc}
class PrincipalAccessBoundaryPolicyArgs {
  /// User defined annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Principal access boundary policy details
  /// Structure is documented below.
  final pulumi.Input<PrincipalAccessBoundaryPolicyDetails>? details;
  /// The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  final pulumi.Input<String>? displayName;
  /// The location the principal access boundary policy is in.
  final pulumi.Input<String> location;
  /// The parent organization of the principal access boundary policy.
  final pulumi.Input<String> organization;
  /// The ID to use to create the principal access boundary policy.
  /// This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, hyphens, or dots. Pattern, /a-z{2,62}/.
  final pulumi.Input<String> principalAccessBoundaryPolicyId;

  /// Creates a new [PrincipalAccessBoundaryPolicyArgs].
  /// [annotations] User defined annotations. See https://google.aip.dev/148#annotations
  /// [details] Principal access boundary policy details
  /// [displayName] The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  /// [location] The location the principal access boundary policy is in.
  /// [organization] The parent organization of the principal access boundary policy.
  /// [principalAccessBoundaryPolicyId] The ID to use to create the principal access boundary policy.
  PrincipalAccessBoundaryPolicyArgs({
    Map<String, String>? annotations,
    PrincipalAccessBoundaryPolicyDetails? details,
    String? displayName,
    required String location,
    required String organization,
    required String principalAccessBoundaryPolicyId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      details = pulumi.Input.asOptionalInput<PrincipalAccessBoundaryPolicyDetails>(details),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asInput<String>(location),
      organization = pulumi.Input.asInput<String>(organization),
      principalAccessBoundaryPolicyId = pulumi.Input.asInput<String>(principalAccessBoundaryPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'details': ?pulumi.Input.mapOptionalInputValue<PrincipalAccessBoundaryPolicyDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'location': location,
      'organization': organization,
      'principalAccessBoundaryPolicyId': principalAccessBoundaryPolicyId,
    };
  }

  factory PrincipalAccessBoundaryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalAccessBoundaryPolicyArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      details: map['details'] == null ? null : PrincipalAccessBoundaryPolicyDetails.fromMap((map['details'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] as String,
      organization: map['organization'] as String,
      principalAccessBoundaryPolicyId: map['principalAccessBoundaryPolicyId'] as String,
    );
  }
}

