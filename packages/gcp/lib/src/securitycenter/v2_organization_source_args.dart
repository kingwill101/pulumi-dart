// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v2_organization_source_v2_organization_source_args_doc}
/// The set of arguments for V2OrganizationSource.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_organization_source_v2_organization_source_args_doc}
class V2OrganizationSourceArgs {
  /// The description of the source (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// The source’s display name. A source’s display name must be unique
  /// amongst its siblings, for example, two sources with the same parent
  /// can't share the same display name. The display name must start and end
  /// with a letter or digit, may contain letters, digits, spaces, hyphens,
  /// and underscores, and can be no longer than 32 characters.
  final pulumi.Input<String> displayName;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  final pulumi.Input<String> organization;

  /// Creates a new [V2OrganizationSourceArgs].
  /// [description] The description of the source (max of 1024 characters).
  /// [displayName] The source’s display name. A source’s display name must be unique
  /// [organization] The organization whose Cloud Security Command Center the Source
  V2OrganizationSourceArgs({
    String? description,
    required String displayName,
    required String organization,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asInput<String>(displayName),
       organization = pulumi.Input.asInput<String>(organization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'organization': organization,
    };
  }

  factory V2OrganizationSourceArgs.fromMap(Map<String, dynamic> map) {
    return V2OrganizationSourceArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      organization: map['organization'] as String,
    );
  }
}
