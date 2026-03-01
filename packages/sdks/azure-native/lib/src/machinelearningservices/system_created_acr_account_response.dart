// ignore_for_file: unused_element, unnecessary_cast

import 'arm_resource_id_response.dart';

class SystemCreatedAcrAccountResponse {
  /// Name of the ACR account
  final String? acrAccountName;
  /// SKU of the ACR account
  final String? acrAccountSku;
  /// This is populated once the ACR account is created.
  final ArmResourceIdResponse? armResourceId;

  /// Creates a new [SystemCreatedAcrAccountResponse].
  /// [acrAccountName] Name of the ACR account
  /// [acrAccountSku] SKU of the ACR account
  /// [armResourceId] This is populated once the ACR account is created.
  SystemCreatedAcrAccountResponse({
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

  factory SystemCreatedAcrAccountResponse.fromMap(Map<String, dynamic> map) {
    return SystemCreatedAcrAccountResponse(
      acrAccountName: map['acrAccountName'] == null ? null : map['acrAccountName'] as String,
      acrAccountSku: map['acrAccountSku'] == null ? null : map['acrAccountSku'] as String,
      armResourceId: map['armResourceId'] == null ? null : ArmResourceIdResponse.fromMap((map['armResourceId'] as Map).cast<String, dynamic>()),
    );
  }
}

