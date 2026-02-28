// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudquota_s_quota_adjuster_settings_squota_adjuster_settings_args_doc}
/// The set of arguments for SQuotaAdjusterSettings.
/// {@endtemplate}
/// {@macro pulumi_cloudquota_s_quota_adjuster_settings_squota_adjuster_settings_args_doc}
class SQuotaAdjusterSettingsArgs {
  /// Required. The configured value of the enablement at the given resource.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablement;

  /// The parent of the quota preference. Allowed parent format is "projects/[project-id / number]".
  final pulumi.Input<String>? parent;

  /// Creates a new [SQuotaAdjusterSettingsArgs].
  /// [enablement] Required. The configured value of the enablement at the given resource.
  /// [parent] The parent of the quota preference. Allowed parent format is "projects/[project-id / number]".
  SQuotaAdjusterSettingsArgs({
    required String enablement,
    String? parent,
  })  : enablement = pulumi.Input.asInput<String>(enablement),
        parent = pulumi.Input.asOptionalInput<String>(parent);

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
      enablement: map['enablement'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
    );
  }
}
