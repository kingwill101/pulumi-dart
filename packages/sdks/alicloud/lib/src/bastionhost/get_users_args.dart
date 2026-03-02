// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_get_users_get_users_args_doc}
/// Arguments for getUsers.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_get_users_get_users_args_doc}
class GetUsersArgs {
  /// Specify the New Created the User's Display Name. Supports up to 128 Characters.
  final pulumi.Input<String>? displayName;
  /// A list of User IDs.
  final pulumi.Input<List<String>>? ids;
  /// You Want to Query the User the Bastion Host ID of.
  final pulumi.Input<String> instanceId;
  /// Specify the New of the User That Created a Different Mobile Phone Number from Your.
  final pulumi.Input<String>? mobile;
  /// A regex string to filter results by User name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Specify the New of the User That Created the Source. Valid Values: Local: Local User RAM: Ram User. Valid values: `Local`, `Ram`.
  final pulumi.Input<String>? source;
  /// Specify the Newly Created User Is Uniquely Identified. Indicates That the Parameter Is a Bastion Host Corresponding to the User with the Ram User's Unique Identifier. The Newly Created User Source Grant Permission to a RAM User (That Is, Source Used as a Ram), this Parameter Is Required. You Can Call Access Control of Listusers Interface from the Return Data Userid to Obtain the Parameters.
  final pulumi.Input<String>? sourceUserId;
  /// The status of the resource. Valid values: `Frozen`, `Normal`.
  final pulumi.Input<String>? status;
  /// Specify the New User Name. This Parameter Is Only by Letters, Lowercase Letters, Numbers, and Underscores (_), Supports up to 128 Characters.
  final pulumi.Input<String>? userName;

  /// Creates a new [GetUsersArgs].
  /// [displayName] Specify the New Created the User's Display Name. Supports up to 128 Characters.
  /// [ids] A list of User IDs.
  /// [instanceId] You Want to Query the User the Bastion Host ID of.
  /// [mobile] Specify the New of the User That Created a Different Mobile Phone Number from Your.
  /// [nameRegex] A regex string to filter results by User name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [source] Specify the New of the User That Created the Source. Valid Values: Local: Local User RAM: Ram User. Valid values: `Local`, `Ram`.
  /// [sourceUserId] Specify the Newly Created User Is Uniquely Identified. Indicates That the Parameter Is a Bastion Host Corresponding to the User with the Ram User's Unique Identifier. The Newly Created User Source Grant Permission to a RAM User (That Is, Source Used as a Ram), this Parameter Is Required. You Can Call Access Control of Listusers Interface from the Return Data Userid to Obtain the Parameters.
  /// [status] The status of the resource. Valid values: `Frozen`, `Normal`.
  /// [userName] Specify the New User Name. This Parameter Is Only by Letters, Lowercase Letters, Numbers, and Underscores (_), Supports up to 128 Characters.
  GetUsersArgs({
    this.displayName,
    this.ids,
    required this.instanceId,
    this.mobile,
    this.nameRegex,
    this.outputFile,
    this.source,
    this.sourceUserId,
    this.status,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'ids': ?ids,
      'instanceId': instanceId,
      'mobile': ?mobile,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'source': ?source,
      'sourceUserId': ?sourceUserId,
      'status': ?status,
      'userName': ?userName,
    };
  }

  factory GetUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      mobile: map['mobile'] == null ? null : (map['mobile']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      sourceUserId: map['sourceUserId'] == null ? null : (map['sourceUserId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

