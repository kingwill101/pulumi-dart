// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostAccountsAccount {
  /// The name of the Dedicated host account.
  final pulumi.Input<String> accountName;

  /// The ID of the Dedicated host.
  final pulumi.Input<String> dedicatedHostId;

  /// The ID of the Dedicated Host Account. The value formats as `&lt;dedicated_host_id&gt;:&lt;account_name&gt;`.
  final pulumi.Input<String> id;

  /// Creates a new [GetDedicatedHostAccountsAccount].
  /// [accountName] The name of the Dedicated host account.
  /// [dedicatedHostId] The ID of the Dedicated host.
  /// [id] The ID of the Dedicated Host Account. The value formats as `&lt;dedicated_host_id&gt;:&lt;account_name&gt;`.
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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dedicatedHostId: pulumi.Input.fromValue(map['dedicatedHostId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
