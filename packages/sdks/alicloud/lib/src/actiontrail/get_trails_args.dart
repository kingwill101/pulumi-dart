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
    this.ids,
    this.includeOrganizationTrail,
    this.includeShadowTrails,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includeOrganizationTrail: (() {
        final guardedValue = map['includeOrganizationTrail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeShadowTrails: (() {
        final guardedValue = map['includeShadowTrails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
