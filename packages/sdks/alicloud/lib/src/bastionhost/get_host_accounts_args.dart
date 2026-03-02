// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_get_host_accounts_get_host_accounts_args_doc}
/// Arguments for getHostAccounts.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_get_host_accounts_get_host_accounts_args_doc}
class GetHostAccountsArgs {
  /// Specify the new hosting account's name, support the longest 128 characters.
  final pulumi.Input<String>? hostAccountName;
  /// Specifies the database where you want to create your hosting account's host ID.
  final pulumi.Input<String> hostId;
  /// A list of Host Account IDs.
  final pulumi.Input<List<String>>? ids;
  /// Specifies the database where you want to create your hosting account's host bastion host ID of.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Host Account name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Specify the new hosting account of the agreement name. Valid values: USING SSH and RDP.
  final pulumi.Input<String>? protocolName;

  /// Creates a new [GetHostAccountsArgs].
  /// [hostAccountName] Specify the new hosting account's name, support the longest 128 characters.
  /// [hostId] Specifies the database where you want to create your hosting account's host ID.
  /// [ids] A list of Host Account IDs.
  /// [instanceId] Specifies the database where you want to create your hosting account's host bastion host ID of.
  /// [nameRegex] A regex string to filter results by Host Account name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [protocolName] Specify the new hosting account of the agreement name. Valid values: USING SSH and RDP.
  GetHostAccountsArgs({
    this.hostAccountName,
    required this.hostId,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.protocolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountName': ?hostAccountName,
      'hostId': hostId,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'protocolName': ?protocolName,
    };
  }

  factory GetHostAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetHostAccountsArgs(
      hostAccountName: map['hostAccountName'] == null ? null : (map['hostAccountName']! as String).input(),
      hostId: (map['hostId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      protocolName: map['protocolName'] == null ? null : (map['protocolName']! as String).input(),
    );
  }
}

