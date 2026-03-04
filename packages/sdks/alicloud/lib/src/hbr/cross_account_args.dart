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
    this.alias,
    required this.crossAccountRoleName,
    required this.crossAccountUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'crossAccountRoleName': crossAccountRoleName,
      'crossAccountUserId': crossAccountUserId,
    };
  }

  factory CrossAccountArgs.fromMap(Map<String, dynamic> map) {
    return CrossAccountArgs(
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      crossAccountRoleName: pulumi.Input.fromValue(
        map['crossAccountRoleName'] as String,
      ),
      crossAccountUserId: pulumi.Input.fromValue(
        map['crossAccountUserId'] as int,
      ),
    );
  }
}
