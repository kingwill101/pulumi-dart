// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trails_actiontrail.dart';
import 'get_trails_trail.dart';

/// Result data returned by getTrails.
class GetTrailsResult {
  /// Field `actiontrails` has been deprecated from version 1.95.0. Use `trails` instead."
  final List<GetTrailsActiontrail> actiontrails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of ActionTrail Trail ids. It is the same as trail name.
  final List<String> ids;
  final bool? includeOrganizationTrail;
  final bool? includeShadowTrails;
  final String? nameRegex;
  /// A list of trail names.
  final List<String> names;
  final String? outputFile;
  /// The status of the ActionTrail Trail.
  final String? status;
  /// A list of ActionTrail Trails. Each element contains the following attributes:
  final List<GetTrailsTrail> trails;

  /// Creates a new [GetTrailsResult].
  /// [actiontrails] Field `actiontrails` has been deprecated from version 1.95.0. Use `trails` instead."
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of ActionTrail Trail ids. It is the same as trail name.
  /// [includeOrganizationTrail] Optional.
  /// [includeShadowTrails] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of trail names.
  /// [outputFile] Optional.
  /// [status] The status of the ActionTrail Trail.
  /// [trails] A list of ActionTrail Trails. Each element contains the following attributes:
  const GetTrailsResult({
    required this.actiontrails,
    required this.id,
    required this.ids,
    this.includeOrganizationTrail,
    this.includeShadowTrails,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    required this.trails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actiontrails': pulumi.Input.encodeList<GetTrailsActiontrail, Map<String, dynamic>>(actiontrails, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'includeOrganizationTrail': ?includeOrganizationTrail,
      'includeShadowTrails': ?includeShadowTrails,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'trails': pulumi.Input.encodeList<GetTrailsTrail, Map<String, dynamic>>(trails, (value) => value.toMap()),
    };
  }

  factory GetTrailsResult.fromMap(Map<String, dynamic> map) {
    return GetTrailsResult(
      actiontrails: pulumi.Input.decodeList<GetTrailsActiontrail>(map['actiontrails']!, (value) => GetTrailsActiontrail.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeOrganizationTrail: (() { final guardedValue = map['includeOrganizationTrail']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeShadowTrails: (() { final guardedValue = map['includeShadowTrails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trails: pulumi.Input.decodeList<GetTrailsTrail>(map['trails']!, (value) => GetTrailsTrail.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

