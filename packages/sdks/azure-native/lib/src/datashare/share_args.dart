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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? shareKind,
    pulumi.Output<String>? shareName,
    pulumi.Output<String>? terms,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareKind = pulumi.Input.asOptionalInput<String>(shareKind),
      shareName = pulumi.Input.asOptionalInput<String>(shareName),
      terms = pulumi.Input.asOptionalInput<String>(terms);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareKind: map['shareKind'] == null ? null : pulumi.Output.create<String>(map['shareKind'] as String),
      shareName: map['shareName'] == null ? null : pulumi.Output.create<String>(map['shareName'] as String),
      terms: map['terms'] == null ? null : pulumi.Output.create<String>(map['terms'] as String),
    );
  }
}

