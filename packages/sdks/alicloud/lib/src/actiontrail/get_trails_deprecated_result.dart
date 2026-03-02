// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trails_deprecated_actiontrail.dart';
import 'get_trails_deprecated_trail.dart';

/// Result data returned by getTrailsDeprecated.
class GetTrailsDeprecatedResult {
  /// A list of actiontrails. Each element contains the following attributes:
  final List<GetTrailsDeprecatedActiontrail> actiontrails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? includeOrganizationTrail;
  final bool? includeShadowTrails;
  final String? nameRegex;
  /// A list of trail names.
  final List<String> names;
  final String? outputFile;
  final String? status;
  final List<GetTrailsDeprecatedTrail> trails;

  /// Creates a new [GetTrailsDeprecatedResult].
  /// [actiontrails] A list of actiontrails. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [includeOrganizationTrail] Optional.
  /// [includeShadowTrails] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of trail names.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [trails] Required.
  GetTrailsDeprecatedResult({
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
      'actiontrails': pulumi.Input.encodeList<GetTrailsDeprecatedActiontrail, Map<String, dynamic>>(actiontrails, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'includeOrganizationTrail': ?includeOrganizationTrail,
      'includeShadowTrails': ?includeShadowTrails,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'trails': pulumi.Input.encodeList<GetTrailsDeprecatedTrail, Map<String, dynamic>>(trails, (value) => value.toMap()),
    };
  }

  factory GetTrailsDeprecatedResult.fromMap(Map<String, dynamic> map) {
    return GetTrailsDeprecatedResult(
      actiontrails: pulumi.Input.decodeList<GetTrailsDeprecatedActiontrail>(map['actiontrails'], (value) => GetTrailsDeprecatedActiontrail.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeOrganizationTrail: map['includeOrganizationTrail'] == null ? null : map['includeOrganizationTrail']! as bool,
      includeShadowTrails: map['includeShadowTrails'] == null ? null : map['includeShadowTrails']! as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      trails: pulumi.Input.decodeList<GetTrailsDeprecatedTrail>(map['trails'], (value) => GetTrailsDeprecatedTrail.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

