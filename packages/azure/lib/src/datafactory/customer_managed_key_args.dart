// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_customer_managed_key_customer_managed_key_args_doc}
/// The set of arguments for CustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_datafactory_customer_managed_key_customer_managed_key_args_doc}
class CustomerManagedKeyArgs {
  /// The ID the of the Customer Managed Key to associate with the Data Factory.
  final pulumi.Input<String> customerManagedKeyId;
  /// The ID of the Data Factory Resource the Customer Managed Key will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataFactoryId;
  /// The User Assigned Identity ID that will be used to access Key Vaults that contain the encryption keys.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [CustomerManagedKeyArgs].
  /// [customerManagedKeyId] The ID the of the Customer Managed Key to associate with the Data Factory.
  /// [dataFactoryId] The ID of the Data Factory Resource the Customer Managed Key will be associated with. Changing this forces a new resource to be created.
  /// [userAssignedIdentityId] The User Assigned Identity ID that will be used to access Key Vaults that contain the encryption keys.
  CustomerManagedKeyArgs({
    required String customerManagedKeyId,
    required String dataFactoryId,
    String? userAssignedIdentityId,
  }) :
      customerManagedKeyId = pulumi.Input.asInput<String>(customerManagedKeyId),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      userAssignedIdentityId = pulumi.Input.asOptionalInput<String>(userAssignedIdentityId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyId': customerManagedKeyId,
      'dataFactoryId': dataFactoryId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory CustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyArgs(
      customerManagedKeyId: map['customerManagedKeyId'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

