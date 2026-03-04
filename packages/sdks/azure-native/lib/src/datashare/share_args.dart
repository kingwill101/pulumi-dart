// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_datashare_share_args_doc}
class ShareArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;

  /// Share description.
  final pulumi.Input<String>? description;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Share kind.
  final pulumi.Input<String>? shareKind;

  /// The name of the share.
  final pulumi.Input<String>? shareName;

  /// Share terms.
  final pulumi.Input<String>? terms;

  /// Creates a new [ShareArgs].
  /// [accountName] The name of the share account.
  /// [description] Share description.
  /// [resourceGroupName] The resource group name.
  /// [shareKind] Share kind.
  /// [shareName] The name of the share.
  /// [terms] Share terms.
  ShareArgs({
    required this.accountName,
    this.description,
    required this.resourceGroupName,
    this.shareKind,
    this.shareName,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'description': ?description,
      'resourceGroupName': resourceGroupName,
      'shareKind': ?shareKind,
      'shareName': ?shareName,
      'terms': ?terms,
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      shareKind: (() {
        final guardedValue = map['shareKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareName: (() {
        final guardedValue = map['shareName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      terms: (() {
        final guardedValue = map['terms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
