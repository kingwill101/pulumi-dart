// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_cross_account_cross_account_args_doc}
/// The set of arguments for CrossAccount.
/// {@endtemplate}
/// {@macro pulumi_hbr_cross_account_cross_account_args_doc}
class CrossAccountArgs {
  /// Backup account alias
  final pulumi.Input<String>? alias;
  /// The name of RAM role that the backup account authorizes the management account to manage its resources
  final pulumi.Input<String> crossAccountRoleName;
  /// The uid of the backup account.
  final pulumi.Input<int> crossAccountUserId;

  /// Creates a new [CrossAccountArgs].
  /// [alias] Backup account alias
  /// [crossAccountRoleName] The name of RAM role that the backup account authorizes the management account to manage its resources
  /// [crossAccountUserId] The uid of the backup account.
  CrossAccountArgs({
    pulumi.Output<String>? alias,
    required pulumi.Output<String> crossAccountRoleName,
    required pulumi.Output<int> crossAccountUserId,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      crossAccountRoleName = pulumi.Input.asInput<String>(crossAccountRoleName),
      crossAccountUserId = pulumi.Input.asInput<int>(crossAccountUserId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'crossAccountRoleName': crossAccountRoleName,
      'crossAccountUserId': crossAccountUserId,
    };
  }

  factory CrossAccountArgs.fromMap(Map<String, dynamic> map) {
    return CrossAccountArgs(
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      crossAccountRoleName: pulumi.Output.create<String>(map['crossAccountRoleName'] as String),
      crossAccountUserId: pulumi.Output.create<int>(map['crossAccountUserId'] as int),
    );
  }
}

