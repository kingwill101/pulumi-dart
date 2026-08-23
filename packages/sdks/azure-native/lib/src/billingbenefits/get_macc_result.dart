// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_shortfall_suppress_reason_response.dart';
import 'commitment_response.dart';
import 'macc_milestone_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'shortfall_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMacc.
class GetMaccResult {
  /// Setting this to true means multi-entity.
  final bool? allowContributors;
  /// Setting this to 'Enable' enables automatic shortfall charging when commitment is not met.
  final String? automaticShortfall;
  /// Optional field to record suppression reason for automatic shortfall.
  final AutomaticShortfallSuppressReasonResponse? automaticShortfallSuppressReason;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully-qualified identifier of the billing account where the MACC is applied. Present only for Enterprise Agreement customers. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  final String? billingAccountResourceId;
  /// Commitment towards the benefit.
  final CommitmentResponse? commitment;
  /// Display name
  final String? displayName;
  /// Must be end of month. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  final String? endAt;
  /// Represents type of the object being operated on. Possible values are primary or contributor.
  final String entityType;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final String? managedBy;
  /// List of milestones associated with this MACC.
  final List<MaccMilestoneResponse>? milestones;
  /// The name of the resource
  final String name;
  /// Plan for the resource.
  final PlanResponse? plan;
  /// Fully-qualified billing account resource identifier of the primary MACC. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}.
  final String? primaryBillingAccountResourceId;
  /// Fully-qualified resource identifier of the primary MACC. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  final String? primaryResourceId;
  /// Represents catalog UPN.
  final String? productCode;
  /// Provisioning state of MACC as assigned by RPaaS. This indicates the last operation's status. For all practical purposes, this can be ignored. For current status of MACC resource, refer to MaccStatus.
  final String provisioningState;
  /// This is the resource identifier of either the primary MACC or the contributor. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  final String? resourceId;
  /// MACC shortfall
  final ShortfallResponse? shortfall;
  /// The resource model definition representing SKU
  final SkuResponse? sku;
  /// Must be start of month. Timestamp must be in the ISO date format YYYY-MM-DDT00:00:00Z.
  final String? startAt;
  /// Represents the current status of the MACC.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// This is the globally unique identifier of the MACC which will not change for the lifetime of the MACC.
  final String? systemId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMaccResult].
  /// [allowContributors] Setting this to true means multi-entity.
  /// [automaticShortfall] Setting this to 'Enable' enables automatic shortfall charging when commitment is not met.
  /// [automaticShortfallSuppressReason] Optional field to record suppression reason for automatic shortfall.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingAccountResourceId] Fully-qualified identifier of the billing account where the MACC is applied. Present only for Enterprise Agreement customers. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}
  /// [commitment] Commitment towards the benefit.
  /// [displayName] Display name
  /// [endAt] Must be end of month. Timestamp must be in the ISO date format YYYY-MM-DDT23:59:59Z.
  /// [entityType] Represents type of the object being operated on. Possible values are primary or contributor.
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [milestones] List of milestones associated with this MACC.
  /// [name] The name of the resource
  /// [plan] Plan for the resource.
  /// [primaryBillingAccountResourceId] Fully-qualified billing account resource identifier of the primary MACC. Format must be Azure Resource ID: /providers/Microsoft.Billing/billingAccounts/{acctId:orgId}.
  /// [primaryResourceId] Fully-qualified resource identifier of the primary MACC. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  /// [productCode] Represents catalog UPN.
  /// [provisioningState] Provisioning state of MACC as assigned by RPaaS. This indicates the last operation's status. For all practical purposes, this can be ignored. For current status of MACC resource, refer to MaccStatus.
  /// [resourceId] This is the resource identifier of either the primary MACC or the contributor. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/maccs/{maccName}.
  /// [shortfall] MACC shortfall
  /// [sku] The resource model definition representing SKU
  /// [startAt] Must be start of month. Timestamp must be in the ISO date format YYYY-MM-DDT00:00:00Z.
  /// [status] Represents the current status of the MACC.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemId] This is the globally unique identifier of the MACC which will not change for the lifetime of the MACC.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMaccResult({
    this.allowContributors,
    this.automaticShortfall,
    this.automaticShortfallSuppressReason,
    required this.azureApiVersion,
    this.billingAccountResourceId,
    this.commitment,
    this.displayName,
    this.endAt,
    required this.entityType,
    required this.etag,
    required this.id,
    this.identity,
    this.kind,
    required this.location,
    this.managedBy,
    this.milestones,
    required this.name,
    this.plan,
    this.primaryBillingAccountResourceId,
    this.primaryResourceId,
    this.productCode,
    required this.provisioningState,
    this.resourceId,
    this.shortfall,
    this.sku,
    this.startAt,
    this.status,
    required this.systemData,
    this.systemId,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowContributors': ?allowContributors,
      'automaticShortfall': ?automaticShortfall,
      'automaticShortfallSuppressReason': ?automaticShortfallSuppressReason?.toMap(),
      'azureApiVersion': azureApiVersion,
      'billingAccountResourceId': ?billingAccountResourceId,
      'commitment': ?commitment?.toMap(),
      'displayName': ?displayName,
      'endAt': ?endAt,
      'entityType': entityType,
      'etag': etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': location,
      'managedBy': ?managedBy,
      'milestones': ?(() { final guardedValue = milestones; if (guardedValue == null) return null; return pulumi.Input.encodeList<MaccMilestoneResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'plan': ?plan?.toMap(),
      'primaryBillingAccountResourceId': ?primaryBillingAccountResourceId,
      'primaryResourceId': ?primaryResourceId,
      'productCode': ?productCode,
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
      'shortfall': ?shortfall?.toMap(),
      'sku': ?sku?.toMap(),
      'startAt': ?startAt,
      'status': ?status,
      'systemData': systemData.toMap(),
      'systemId': ?systemId,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMaccResult.fromMap(Map<String, dynamic> map) {
    return GetMaccResult(
      allowContributors: (() { final guardedValue = map['allowContributors']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      automaticShortfall: (() { final guardedValue = map['automaticShortfall']; if (guardedValue == null) return null; return guardedValue as String; })(),
      automaticShortfallSuppressReason: (() { final guardedValue = map['automaticShortfallSuppressReason']; if (guardedValue == null) return null; return AutomaticShortfallSuppressReasonResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      billingAccountResourceId: (() { final guardedValue = map['billingAccountResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commitment: (() { final guardedValue = map['commitment']; if (guardedValue == null) return null; return CommitmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityType: map['entityType'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      milestones: (() { final guardedValue = map['milestones']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MaccMilestoneResponse>(guardedValue, (value) => MaccMilestoneResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      primaryBillingAccountResourceId: (() { final guardedValue = map['primaryBillingAccountResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryResourceId: (() { final guardedValue = map['primaryResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productCode: (() { final guardedValue = map['productCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shortfall: (() { final guardedValue = map['shortfall']; if (guardedValue == null) return null; return ShortfallResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
