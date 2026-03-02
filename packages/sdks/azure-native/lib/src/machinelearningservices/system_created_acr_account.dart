// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id.dart';

class SystemCreatedAcrAccount {
  /// Name of the ACR account
  final pulumi.Input<String>? acrAccountName;
  /// SKU of the ACR account
  final pulumi.Input<String>? acrAccountSku;
  /// This is populated once the ACR account is created.
  final pulumi.Input<ArmResourceId>? armResourceId;

  /// Creates a new [SystemCreatedAcrAccount].
  /// [acrAccountName] Name of the ACR account
  /// [acrAccountSku] SKU of the ACR account
  /// [armResourceId] This is populated once the ACR account is created.
  SystemCreatedAcrAccount({
    this.acrAccountName,
    this.acrAccountSku,
    this.armResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrAccountName': ?acrAccountName,
      'acrAccountSku': ?acrAccountSku,
      'armResourceId': ?pulumi.Input.mapOptionalInputValue<ArmResourceId, Map<String, dynamic>>(armResourceId, (value) => value.toMap()),
    };
  }

  factory SystemCreatedAcrAccount.fromMap(Map<String, dynamic> map) {
    return SystemCreatedAcrAccount(
      acrAccountName: map['acrAccountName'] == null ? null : (map['acrAccountName']! as String).input(),
      acrAccountSku: map['acrAccountSku'] == null ? null : (map['acrAccountSku']! as String).input(),
      armResourceId: map['armResourceId'] == null ? null : (ArmResourceId.fromMap((map['armResourceId']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

