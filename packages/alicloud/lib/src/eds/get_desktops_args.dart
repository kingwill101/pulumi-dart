// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_desktops_get_desktops_args_doc}
/// Arguments for getDesktops.
/// {@endtemplate}
/// {@macro pulumi_eds_get_desktops_get_desktops_args_doc}
class GetDesktopsArgs {
  /// The desktop name.
  final pulumi.Input<String>? desktopName;
  final pulumi.Input<List<String>>? endUserIds;
  /// A list of Desktop IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Desktop name.
  final pulumi.Input<String>? nameRegex;
  /// The ID of the Simple Office Site.
  final pulumi.Input<String>? officeSiteId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The policy group id of the Desktop.
  final pulumi.Input<String>? policyGroupId;
  /// The status of the Desktop. Valid values: `Deleted`, `Expired`, `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDesktopsArgs].
  /// [desktopName] The desktop name.
  /// [endUserIds] Optional.
  /// [ids] A list of Desktop IDs.
  /// [nameRegex] A regex string to filter results by Desktop name.
  /// [officeSiteId] The ID of the Simple Office Site.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyGroupId] The policy group id of the Desktop.
  /// [status] The status of the Desktop. Valid values: `Deleted`, `Expired`, `Pending`, `Running`, `Starting`, `Stopped`, `Stopping`.
  GetDesktopsArgs({
    String? desktopName,
    List<String>? endUserIds,
    List<String>? ids,
    String? nameRegex,
    String? officeSiteId,
    String? outputFile,
    String? policyGroupId,
    String? status,
  }) :
      desktopName = pulumi.Input.asOptionalInput<String>(desktopName),
      endUserIds = pulumi.Input.asOptionalInput<List<String>>(endUserIds),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      officeSiteId = pulumi.Input.asOptionalInput<String>(officeSiteId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policyGroupId = pulumi.Input.asOptionalInput<String>(policyGroupId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopName': ?desktopName,
      'endUserIds': ?endUserIds,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'officeSiteId': ?officeSiteId,
      'outputFile': ?outputFile,
      'policyGroupId': ?policyGroupId,
      'status': ?status,
    };
  }

  factory GetDesktopsArgs.fromMap(Map<String, dynamic> map) {
    return GetDesktopsArgs(
      desktopName: map['desktopName'] == null ? null : map['desktopName'] as String,
      endUserIds: map['endUserIds'] == null ? null : (map['endUserIds'] as List).cast<String>(),
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      officeSiteId: map['officeSiteId'] == null ? null : map['officeSiteId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policyGroupId: map['policyGroupId'] == null ? null : map['policyGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

