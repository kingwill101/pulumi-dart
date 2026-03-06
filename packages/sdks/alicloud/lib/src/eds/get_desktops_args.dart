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
  const GetDesktopsArgs({
    this.desktopName,
    this.endUserIds,
    this.ids,
    this.nameRegex,
    this.officeSiteId,
    this.outputFile,
    this.policyGroupId,
    this.status,
  });

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
      desktopName: (() { final guardedValue = map['desktopName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endUserIds: (() { final guardedValue = map['endUserIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      officeSiteId: (() { final guardedValue = map['officeSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyGroupId: (() { final guardedValue = map['policyGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

