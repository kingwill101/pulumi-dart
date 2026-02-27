// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SQuotaAdjusterSettings.
class SQuotaAdjusterSettingsArgs {
  /// Required. The configured value of the enablement at the given resource.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablement;

  /// The parent of the quota preference. Allowed parent format is "projects/[project-id / number]".
  final pulumi.Input<String>? parent;

  SQuotaAdjusterSettingsArgs({
    required this.enablement,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enablement'] = enablement;
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory SQuotaAdjusterSettingsArgs.fromMap(Map<String, dynamic> map) {
    return SQuotaAdjusterSettingsArgs(
      enablement: pulumi.Input.asInput<String>(map['enablement']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
    );
  }
}
