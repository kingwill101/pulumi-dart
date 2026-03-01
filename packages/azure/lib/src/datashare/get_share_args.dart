// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_share_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_share_get_share_args_doc}
class GetShareArgs {
  /// The ID of the Data Share account in which the Data Share is created.
  final pulumi.Input<String> accountId;
  /// The name of this Data Share.
  final pulumi.Input<String> name;

  /// Creates a new [GetShareArgs].
  /// [accountId] The ID of the Data Share account in which the Data Share is created.
  /// [name] The name of this Data Share.
  GetShareArgs({
    required String accountId,
    required String name,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      accountId: map['accountId'] as String,
      name: map['name'] as String,
    );
  }
}

