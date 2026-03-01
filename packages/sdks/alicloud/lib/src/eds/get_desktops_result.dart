// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_desktops_desktop.dart';

/// Result data returned by getDesktops.
class GetDesktopsResult {
  final String? desktopName;
  final List<GetDesktopsDesktop> desktops;
  final List<String>? endUserIds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? officeSiteId;
  final String? outputFile;
  final String? policyGroupId;
  final String? status;

  /// Creates a new [GetDesktopsResult].
  /// [desktopName] Optional.
  /// [desktops] Required.
  /// [endUserIds] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [officeSiteId] Optional.
  /// [outputFile] Optional.
  /// [policyGroupId] Optional.
  /// [status] Optional.
  GetDesktopsResult({
    this.desktopName,
    required this.desktops,
    this.endUserIds,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.officeSiteId,
    this.outputFile,
    this.policyGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopName': ?desktopName,
      'desktops': pulumi.Input.encodeList<GetDesktopsDesktop, Map<String, dynamic>>(desktops, (value) => value.toMap()),
      'endUserIds': ?endUserIds,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'officeSiteId': ?officeSiteId,
      'outputFile': ?outputFile,
      'policyGroupId': ?policyGroupId,
      'status': ?status,
    };
  }

  factory GetDesktopsResult.fromMap(Map<String, dynamic> map) {
    return GetDesktopsResult(
      desktopName: map['desktopName'] == null ? null : map['desktopName'] as String,
      desktops: pulumi.Input.decodeList<GetDesktopsDesktop>(map['desktops'], (value) => GetDesktopsDesktop.fromMap((value as Map).cast<String, dynamic>())),
      endUserIds: map['endUserIds'] == null ? null : (map['endUserIds'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      officeSiteId: map['officeSiteId'] == null ? null : map['officeSiteId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policyGroupId: map['policyGroupId'] == null ? null : map['policyGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

