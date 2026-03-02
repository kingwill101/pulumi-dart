// ignore_for_file: unused_element, unnecessary_cast

import 'file_destination_response.dart';
import 'notification_properties_response.dart';
import 'schedule_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getScheduledAction.
class GetScheduledActionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Scheduled action name.
  final String displayName;
  /// Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.
  final String eTag;
  /// Destination format of the view data. This is optional.
  final FileDestinationResponse? fileDestination;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Kind of the scheduled action.
  final String? kind;
  /// The name of the resource
  final String name;
  /// Notification properties based on scheduled action kind.
  final NotificationPropertiesResponse notification;
  /// Email address of the point of contact that should get the unsubscribe requests and notification emails.
  final String? notificationEmail;
  /// Schedule of the scheduled action.
  final SchedulePropertiesResponse schedule;
  /// For private scheduled action(Create or Update), scope will be empty.<br /> For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  final String? scope;
  /// Status of the scheduled action.
  final String status;
  /// Kind of the scheduled action.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  final String viewId;

  /// Creates a new [GetScheduledActionResult].
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
  /// [scope] For private scheduled action(Create or Update), scope will be empty.<br /> For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  /// [status] Status of the scheduled action.
  /// [systemData] Kind of the scheduled action.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [viewId] Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  GetScheduledActionResult({
    required this.azureApiVersion,
    required this.displayName,
    required this.eTag,
    this.fileDestination,
    required this.id,
    this.kind,
    required this.name,
    required this.notification,
    this.notificationEmail,
    required this.schedule,
    this.scope,
    required this.status,
    required this.systemData,
    required this.type,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': displayName,
      'eTag': eTag,
      'fileDestination': ?fileDestination == null ? null : fileDestination!.toMap(),
      'id': id,
      'kind': ?kind,
      'name': name,
      'notification': notification.toMap(),
      'notificationEmail': ?notificationEmail,
      'schedule': schedule.toMap(),
      'scope': ?scope,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
      'viewId': viewId,
    };
  }

  factory GetScheduledActionResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledActionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: map['displayName'] as String,
      eTag: map['eTag'] as String,
      fileDestination: map['fileDestination'] == null ? null : FileDestinationResponse.fromMap((map['fileDestination']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      notification: NotificationPropertiesResponse.fromMap((map['notification'] as Map).cast<String, dynamic>()),
      notificationEmail: map['notificationEmail'] == null ? null : map['notificationEmail']! as String,
      schedule: SchedulePropertiesResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      scope: map['scope'] == null ? null : map['scope']! as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      viewId: map['viewId'] as String,
    );
  }
}

