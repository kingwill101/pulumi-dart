// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_trails_get_trails_args_doc}
/// Arguments for getTrails.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_trails_get_trails_args_doc}
class GetTrailsArgs {
  /// A list of ActionTrail Trail IDs. It is the same as trail name.
  final pulumi.Input<List<String>>? ids;
  /// Whether to show organization tracking. Default to `false`.
  final pulumi.Input<bool>? includeOrganizationTrail;
  /// Whether to show shadow tracking. Default to `false`.
  final pulumi.Input<bool>? includeShadowTrails;
  /// A regex string to filter results by trail name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter the results by status of the ActionTrail Trail. Valid values: `Disable`, `Enable`, `Fresh`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetTrailsArgs].
  /// [ids] A list of ActionTrail Trail IDs. It is the same as trail name.
  /// [includeOrganizationTrail] Whether to show organization tracking. Default to `false`.
  /// [includeShadowTrails] Whether to show shadow tracking. Default to `false`.
  /// [nameRegex] A regex string to filter results by trail name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Filter the results by status of the ActionTrail Trail. Valid values: `Disable`, `Enable`, `Fresh`.
  GetTrailsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? includeOrganizationTrail,
    pulumi.Output<bool>? includeShadowTrails,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
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

  factory GetTrailsArgs.fromMap(Map<String, dynamic> map) {
    return GetTrailsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      includeOrganizationTrail: map['includeOrganizationTrail'] == null ? null : pulumi.Output.create<bool>(map['includeOrganizationTrail'] as bool),
      includeShadowTrails: map['includeShadowTrails'] == null ? null : pulumi.Output.create<bool>(map['includeShadowTrails'] as bool),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

