// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../principal_access_boundary_policy_details/principal_access_boundary_policy_details.dart';

/// The set of arguments for PrincipalAccessBoundaryPolicy.
class PrincipalAccessBoundaryPolicyArgs {
  /// User defined annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Principal access boundary policy details
  /// Structure is documented below.
  final Input<PrincipalAccessBoundaryPolicyDetails>? details;

  /// The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  final Input<String>? displayName;

  /// The location the principal access boundary policy is in.
  final Input<String> location;

  /// The parent organization of the principal access boundary policy.
  final Input<String> organization;

  /// The ID to use to create the principal access boundary policy.
  /// This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, hyphens, or dots. Pattern, /a-z{2,62}/.
  final Input<String> principalAccessBoundaryPolicyId;

  PrincipalAccessBoundaryPolicyArgs({
    this.annotations,
    this.details,
    this.displayName,
    required this.location,
    required this.organization,
    required this.principalAccessBoundaryPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = Input.mapOptionalInputValue<
          PrincipalAccessBoundaryPolicyDetails,
          Map<String, dynamic>>(detailsValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    map['organization'] = organization;
    map['principalAccessBoundaryPolicyId'] = principalAccessBoundaryPolicyId;
    return map;
  }

  factory PrincipalAccessBoundaryPolicyArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalAccessBoundaryPolicyArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      details: Input.asOptionalInput<PrincipalAccessBoundaryPolicyDetails>(
          map['details']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      organization: Input.asInput<String>(map['organization']),
      principalAccessBoundaryPolicyId:
          Input.asInput<String>(map['principalAccessBoundaryPolicyId']),
    );
  }
}
