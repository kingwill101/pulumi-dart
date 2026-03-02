// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostAccountsAccount {
  /// The name of the Dedicated host account.
  final pulumi.Input<String> accountName;
  /// The ID of the Dedicated host.
  final pulumi.Input<String> dedicatedHostId;
  /// The ID of the Dedicated Host Account. The value formats as `<dedicated_host_id>:<account_name>`.
  final pulumi.Input<String> id;

  /// Creates a new [GetDedicatedHostAccountsAccount].
  /// [accountName] The name of the Dedicated host account.
  /// [dedicatedHostId] The ID of the Dedicated host.
  /// [id] The ID of the Dedicated Host Account. The value formats as `<dedicated_host_id>:<account_name>`.
  GetDedicatedHostAccountsAccount({
    required this.accountName,
    required this.dedicatedHostId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dedicatedHostId': dedicatedHostId,
      'id': id,
    };
  }

  factory GetDedicatedHostAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostAccountsAccount(
      accountName: (map['accountName'] as String).input(),
      dedicatedHostId: (map['dedicatedHostId'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

