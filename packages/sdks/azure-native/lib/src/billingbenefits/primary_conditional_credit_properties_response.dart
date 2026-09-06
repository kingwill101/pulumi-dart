// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_credit_milestone_response.dart';

/// Properties for primary conditional credit.
class PrimaryConditionalCreditPropertiesResponse {
  /// Whether this conditional credit allows contributor billing accounts
  final pulumi.Input<String?>? allowContributors;
  /// Fully-qualified identifier of the benefit under applicable benefit list.
  final pulumi.Input<String> benefitResourceId;
  /// The billing account resource ID
  final pulumi.Input<String?>? billingAccountResourceId;
  /// Display name for the conditional credit
  final pulumi.Input<String?>? displayName;
  /// End date of the conditional credit (derived from last milestone)
  final pulumi.Input<String?>? endAt;
  /// Type of conditional credit entity
  /// Expected value is 'Primary'.
  final pulumi.Input<String> entityType;
  /// List of milestones for this conditional credit (must include awards)
  final pulumi.Input<List<ConditionalCreditMilestoneResponse>?>? milestones;
  /// Product code for the conditional credit
  final pulumi.Input<String?>? productCode;
  /// The provisioning state of the resource
  final pulumi.Input<String> provisioningState;
  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  final pulumi.Input<String?>? resourceId;
  /// Start date of the conditional credit
  final pulumi.Input<String?>? startAt;
  /// The status of the conditional credit
  final pulumi.Input<String?>? status;
  /// System identifier shared between primary and contributor conditional credits representing the same conditional credit program
  final pulumi.Input<String?>? systemId;

  /// Creates a new [PrimaryConditionalCreditPropertiesResponse].
  /// [allowContributors] Whether this conditional credit allows contributor billing accounts
  /// [benefitResourceId] Fully-qualified identifier of the benefit under applicable benefit list.
  /// [billingAccountResourceId] The billing account resource ID
  /// [displayName] Display name for the conditional credit
  /// [endAt] End date of the conditional credit (derived from last milestone)
  /// [entityType] Type of conditional credit entity
  /// [milestones] List of milestones for this conditional credit (must include awards)
  /// [productCode] Product code for the conditional credit
  /// [provisioningState] The provisioning state of the resource
  /// [resourceId] Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  /// [startAt] Start date of the conditional credit
  /// [status] The status of the conditional credit
  /// [systemId] System identifier shared between primary and contributor conditional credits representing the same conditional credit program
  const PrimaryConditionalCreditPropertiesResponse({
    this.allowContributors,
    required this.benefitResourceId,
    this.billingAccountResourceId,
    this.displayName,
    this.endAt,
    required this.entityType,
    this.milestones,
    this.productCode,
    required this.provisioningState,
    this.resourceId,
    this.startAt,
    this.status,
    this.systemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowContributors': ?allowContributors,
      'benefitResourceId': benefitResourceId,
      'billingAccountResourceId': ?billingAccountResourceId,
      'displayName': ?displayName,
      'endAt': ?endAt,
      'entityType': entityType,
      'milestones': ?pulumi.Input.mapOptionalInputValue<List<ConditionalCreditMilestoneResponse>, List<Map<String, dynamic>>>(milestones, (value) => pulumi.Input.encodeList<ConditionalCreditMilestoneResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productCode': ?productCode,
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
      'startAt': ?startAt,
      'status': ?status,
      'systemId': ?systemId,
    };
  }

  factory PrimaryConditionalCreditPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrimaryConditionalCreditPropertiesResponse(
      allowContributors: (() { final guardedValue = map['allowContributors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      benefitResourceId: pulumi.Input.fromValue(map['benefitResourceId'] as String),
      billingAccountResourceId: (() { final guardedValue = map['billingAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      milestones: (() { final guardedValue = map['milestones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionalCreditMilestoneResponse>(guardedValue, (value) => ConditionalCreditMilestoneResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
