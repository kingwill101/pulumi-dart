// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_trails_deprecated_get_trails_deprecated_args_doc}
/// Arguments for getTrailsDeprecated.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_trails_deprecated_get_trails_deprecated_args_doc}
class GetTrailsDeprecatedArgs {
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<bool>? includeOrganizationTrail;
  final pulumi.Input<bool>? includeShadowTrails;
  /// A regex string to filter results action trail name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? status;

  /// Creates a new [GetTrailsDeprecatedArgs].
  /// [ids] Optional.
  /// [includeOrganizationTrail] Optional.
  /// [includeShadowTrails] Optional.
  /// [nameRegex] A regex string to filter results action trail name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Optional.
  GetTrailsDeprecatedArgs({
    List<String>? ids,
    bool? includeOrganizationTrail,
    bool? includeShadowTrails,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeOrganizationTrail = pulumi.Input.asOptionalInput<bool>(includeOrganizationTrail),
      includeShadowTrails = pulumi.Input.asOptionalInput<bool>(includeShadowTrails),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'includeOrganizationTrail': ?includeOrganizationTrail,
      'includeShadowTrails': ?includeShadowTrails,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetTrailsDeprecatedArgs.fromMap(Map<String, dynamic> map) {
    return GetTrailsDeprecatedArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      includeOrganizationTrail: map['includeOrganizationTrail'] == null ? null : map['includeOrganizationTrail'] as bool,
      includeShadowTrails: map['includeShadowTrails'] == null ? null : map['includeShadowTrails'] as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

