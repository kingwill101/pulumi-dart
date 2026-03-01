// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_customer_event_args_doc}
/// Arguments for getCustomerEvent.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_customer_event_args_doc}
class GetCustomerEventArgs {
  /// The resource name of the Test Base Customer event.
  final pulumi.Input<String> customerEventName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetCustomerEventArgs].
  /// [customerEventName] The resource name of the Test Base Customer event.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetCustomerEventArgs({
    required String customerEventName,
    required String resourceGroupName,
    required String testBaseAccountName,
  }) :
      customerEventName = pulumi.Input.asInput<String>(customerEventName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEventName': customerEventName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetCustomerEventArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerEventArgs(
      customerEventName: map['customerEventName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
    );
  }
}

