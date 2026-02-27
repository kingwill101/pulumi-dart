// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for V2OrganizationSource.
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

  V2OrganizationSourceArgs({
    this.description,
    required this.displayName,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['organization'] = organization;
    return map;
  }

  factory V2OrganizationSourceArgs.fromMap(Map<String, dynamic> map) {
    return V2OrganizationSourceArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      organization: pulumi.Input.asInput<String>(map['organization']),
    );
  }
}
