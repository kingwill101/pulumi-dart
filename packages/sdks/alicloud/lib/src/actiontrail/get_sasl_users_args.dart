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
  GetSaslUsersArgs({
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

