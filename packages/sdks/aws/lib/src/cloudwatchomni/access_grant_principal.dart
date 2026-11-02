// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_principal_principal_attribute.dart';

class AccessGrantPrincipal {
  /// Attribute condition for attribute-based access. When set, the grant targets any principal matching all conditions. Supported only when `principalType` is `IDC_USER`. Up to 10 blocks. See below.
  final pulumi.Input<List<AccessGrantPrincipalPrincipalAttribute>?>? principalAttributes;
  /// ID of the principal, such as an IAM role ARN, an Identity Center user or group ID, or the ID of an access profile or alert. Must be 1-2048 characters and start with a letter or number.
  final pulumi.Input<String?>? principalId;
  /// Type of principal. Valid values are `IDC_USER`, `IDC_GROUP`, `IAM_USER`, `IAM_ROLE`, `IAM_ROOT`, `ACCESS_PROFILE`, `ALERT` and `AGENT`.
  final pulumi.Input<String> principalType;

  /// Creates a new [AccessGrantPrincipal].
  /// [principalAttributes] Attribute condition for attribute-based access. When set, the grant targets any principal matching all conditions. Supported only when `principalType` is `IDC_USER`. Up to 10 blocks. See below.
  /// [principalId] ID of the principal, such as an IAM role ARN, an Identity Center user or group ID, or the ID of an access profile or alert. Must be 1-2048 characters and start with a letter or number.
  /// [principalType] Type of principal. Valid values are `IDC_USER`, `IDC_GROUP`, `IAM_USER`, `IAM_ROLE`, `IAM_ROOT`, `ACCESS_PROFILE`, `ALERT` and `AGENT`.
  const AccessGrantPrincipal({
    this.principalAttributes,
    this.principalId,
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalAttributes': ?pulumi.Input.mapOptionalInputValue<List<AccessGrantPrincipalPrincipalAttribute>, List<Map<String, dynamic>>>(principalAttributes, (value) => pulumi.Input.encodeList<AccessGrantPrincipalPrincipalAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principalId': ?principalId,
      'principalType': principalType,
    };
  }

  factory AccessGrantPrincipal.fromMap(Map<String, dynamic> map) {
    return AccessGrantPrincipal(
      principalAttributes: (() { final guardedValue = map['principalAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGrantPrincipalPrincipalAttribute>(guardedValue, (value) => AccessGrantPrincipalPrincipalAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
    );
  }
}
