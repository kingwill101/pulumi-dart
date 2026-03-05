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
      acrAccountName: (() { final guardedValue = map['acrAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acrAccountSku: (() { final guardedValue = map['acrAccountSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      armResourceId: (() { final guardedValue = map['armResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmResourceId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

