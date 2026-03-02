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
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      crossAccountRoleName: (map['crossAccountRoleName'] as String).input(),
      crossAccountUserId: (map['crossAccountUserId'] as int).input(),
    );
  }
}

