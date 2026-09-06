// ignore_for_file: unused_element, unnecessary_cast

import 'file_destination_response.dart';
import 'notification_properties_response.dart';
import 'schedule_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getScheduledActionByScope.
class GetScheduledActionByScopeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Scheduled action name.
  final String? displayName;
  /// Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.
  final String? eTag;
  /// Destination format of the view data. This is optional.
  final FileDestinationResponse? fileDestination;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Kind of the scheduled action.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// Notification properties based on scheduled action kind.
  final NotificationPropertiesResponse? notification;
  /// Email address of the point of contact that should get the unsubscribe requests and notification emails.
  final String? notificationEmail;
  /// Schedule of the scheduled action.
  final SchedulePropertiesResponse? schedule;
  /// For private scheduled action(Create or Update), scope will be empty.&lt;br /&gt; For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  final String? scope;
  /// Status of the scheduled action.
  final String? status;
  /// Kind of the scheduled action.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  final String? viewId;

  /// Creates a new [GetScheduledActionByScopeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Scheduled action name.
  /// [eTag] Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.
  /// [fileDestination] Destination format of the view data. This is optional.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Kind of the scheduled action.
  /// [name] The name of the resource
  /// [notification] Notification properties based on scheduled action kind.
  /// [notificationEmail] Email address of the point of contact that should get the unsubscribe requests and notification emails.
  /// [schedule] Schedule of the scheduled action.
  /// [scope] For private scheduled action(Create or Update), scope will be empty.&lt;br /&gt; For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  /// [status] Status of the scheduled action.
  /// [systemData] Kind of the scheduled action.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [viewId] Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  const GetScheduledActionByScopeResult({
    this.azureApiVersion,
    this.displayName,
    this.eTag,
    this.fileDestination,
    this.id,
    this.kind,
    this.name,
    this.notification,
    this.notificationEmail,
    this.schedule,
    this.scope,
    this.status,
    this.systemData,
    this.type,
    this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'eTag': ?eTag,
      'fileDestination': ?fileDestination?.toMap(),
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'notification': ?notification?.toMap(),
      'notificationEmail': ?notificationEmail,
      'schedule': ?schedule?.toMap(),
      'scope': ?scope,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'viewId': ?viewId,
    };
  }

  factory GetScheduledActionByScopeResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledActionByScopeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileDestination: (() { final guardedValue = map['fileDestination']; if (guardedValue == null) return null; return FileDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notification: (() { final guardedValue = map['notification']; if (guardedValue == null) return null; return NotificationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      notificationEmail: (() { final guardedValue = map['notificationEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return SchedulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      viewId: (() { final guardedValue = map['viewId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
