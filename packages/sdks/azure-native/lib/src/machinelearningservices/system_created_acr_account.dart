// ignore_for_file: unused_element, unnecessary_cast

import 'arm_resource_id.dart';

class SystemCreatedAcrAccount {
  /// Name of the ACR account
  final String? acrAccountName;
  /// SKU of the ACR account
  final String? acrAccountSku;
  /// This is populated once the ACR account is created.
  final ArmResourceId? armResourceId;

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
      'armResourceId': ?armResourceId == null ? null : armResourceId!.toMap(),
    };
  }

  factory SystemCreatedAcrAccount.fromMap(Map<String, dynamic> map) {
    return SystemCreatedAcrAccount(
      acrAccountName: map['acrAccountName'] == null ? null : map['acrAccountName'] as String,
      acrAccountSku: map['acrAccountSku'] == null ? null : map['acrAccountSku'] as String,
      armResourceId: map['armResourceId'] == null ? null : ArmResourceId.fromMap((map['armResourceId'] as Map).cast<String, dynamic>()),
    );
  }
}

