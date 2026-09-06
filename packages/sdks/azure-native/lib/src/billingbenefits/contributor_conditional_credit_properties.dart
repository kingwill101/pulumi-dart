// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for contributor conditional credit.
class ContributorConditionalCreditProperties {
  /// The billing account resource ID
  final pulumi.Input<String?>? billingAccountResourceId;
  /// Display name for the conditional credit
  final pulumi.Input<String?>? displayName;
  /// End date of the conditional credit (derived from last milestone)
  final pulumi.Input<String?>? endAt;
  /// Type of conditional credit entity
  /// Expected value is 'Contributor'.
  final pulumi.Input<String> entityType;
  /// Fully-qualified billing account resource identifier of the primary CACO. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}.
  final pulumi.Input<String?>? primaryBillingAccountResourceId;
  /// Resource ID of the primary conditional credit (required for contributors)
  final pulumi.Input<String?>? primaryResourceId;
  /// Product code for the conditional credit
  final pulumi.Input<String?>? productCode;
  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  final pulumi.Input<String?>? resourceId;
  /// Start date of the conditional credit
  final pulumi.Input<String?>? startAt;
  /// The status of the conditional credit
  final pulumi.Input<dynamic>? status;
  /// System identifier shared between primary and contributor conditional credits representing the same conditional credit program
  final pulumi.Input<String?>? systemId;

  /// Creates a new [ContributorConditionalCreditProperties].
  /// [billingAccountResourceId] The billing account resource ID
  /// [displayName] Display name for the conditional credit
  /// [endAt] End date of the conditional credit (derived from last milestone)
  /// [entityType] Type of conditional credit entity
  /// [primaryBillingAccountResourceId] Fully-qualified billing account resource identifier of the primary CACO. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}.
  /// [primaryResourceId] Resource ID of the primary conditional credit (required for contributors)
  /// [productCode] Product code for the conditional credit
  /// [resourceId] Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  /// [startAt] Start date of the conditional credit
  /// [status] The status of the conditional credit
  /// [systemId] System identifier shared between primary and contributor conditional credits representing the same conditional credit program
  const ContributorConditionalCreditProperties({
    this.billingAccountResourceId,
    this.displayName,
    this.endAt,
    required this.entityType,
    this.primaryBillingAccountResourceId,
    this.primaryResourceId,
    this.productCode,
    this.resourceId,
    this.startAt,
    this.status,
    this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountResourceId': ?billingAccountResourceId,
      'displayName': ?displayName,
      'endAt': ?endAt,
      'entityType': entityType,
      'primaryBillingAccountResourceId': ?primaryBillingAccountResourceId,
      'primaryResourceId': ?primaryResourceId,
      'productCode': ?productCode,
      'resourceId': ?resourceId,
      'startAt': ?startAt,
      'status': ?status,
      'systemId': ?systemId,
    };
  }

  factory ContributorConditionalCreditProperties.fromMap(Map<String, dynamic> map) {
    return ContributorConditionalCreditProperties(
      billingAccountResourceId: (() { final guardedValue = map['billingAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      primaryBillingAccountResourceId: (() { final guardedValue = map['primaryBillingAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryResourceId: (() { final guardedValue = map['primaryResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
