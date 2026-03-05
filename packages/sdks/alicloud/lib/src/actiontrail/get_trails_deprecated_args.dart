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

  factory GetTrailsDeprecatedArgs.fromMap(Map<String, dynamic> map) {
    return GetTrailsDeprecatedArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeOrganizationTrail: (() { final guardedValue = map['includeOrganizationTrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeShadowTrails: (() { final guardedValue = map['includeShadowTrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

