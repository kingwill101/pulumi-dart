// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_sasl_users_get_sasl_users_args_doc}
/// Arguments for getSaslUsers.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_sasl_users_get_sasl_users_args_doc}
class GetSaslUsersArgs {
  /// A list of Sasl User IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Sasl User name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetSaslUsersArgs].
  /// [ids] A list of Sasl User IDs.
  /// [instanceId] The ID of the instance.
  /// [nameRegex] A regex string to filter results by Sasl User name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetSaslUsersArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetSaslUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetSaslUsersArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

