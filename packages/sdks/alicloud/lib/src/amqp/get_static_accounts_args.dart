// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_get_static_accounts_get_static_accounts_args_doc}
/// Arguments for getStaticAccounts.
/// {@endtemplate}
/// {@macro pulumi_amqp_get_static_accounts_get_static_accounts_args_doc}
class GetStaticAccountsArgs {
  /// The `key` of the resource supplied above.The value is formulated as `<instance_id>:<access_key>`.
  final pulumi.Input<List<String>>? ids;
  /// InstanceId
  final pulumi.Input<String>? instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetStaticAccountsArgs].
  /// [ids] The `key` of the resource supplied above.The value is formulated as `<instance_id>:<access_key>`.
  /// [instanceId] InstanceId
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetStaticAccountsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': ?instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetStaticAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticAccountsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

