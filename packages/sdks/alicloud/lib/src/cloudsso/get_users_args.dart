// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_users_get_users_args_doc}
/// Arguments for getUsers.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_users_get_users_args_doc}
class GetUsersArgs {
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of User IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by User name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// ProvisionType. Valid values: `Manual`, `Synchronized`.
  final pulumi.Input<String>? provisionType;
  /// The status of user. Valid values: `Disabled`, `Enabled`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetUsersArgs].
  /// [directoryId] The ID of the Directory.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of User IDs.
  /// [nameRegex] A regex string to filter results by User name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [provisionType] ProvisionType. Valid values: `Manual`, `Synchronized`.
  /// [status] The status of user. Valid values: `Disabled`, `Enabled`.
  const GetUsersArgs({
    required this.directoryId,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.provisionType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'provisionType': ?provisionType,
      'status': ?status,
    };
  }

  factory GetUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs(
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionType: (() { final guardedValue = map['provisionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

