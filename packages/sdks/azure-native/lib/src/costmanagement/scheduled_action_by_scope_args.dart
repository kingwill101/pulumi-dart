// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_destination.dart';
import 'notification_properties.dart';
import 'schedule_properties.dart';

/// {@template pulumi_costmanagement_scheduled_action_by_scope_args_doc}
/// The set of arguments for ScheduledActionByScope.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_scheduled_action_by_scope_args_doc}
class ScheduledActionByScopeArgs {
  /// Scheduled action name.
  final pulumi.Input<String> displayName;
  /// Destination format of the view data. This is optional.
  final pulumi.Input<FileDestination>? fileDestination;
  /// Kind of the scheduled action.
  final pulumi.Input<String>? kind;
  /// Scheduled action name.
  final pulumi.Input<String>? name;
  /// Notification properties based on scheduled action kind.
  final pulumi.Input<NotificationProperties> notification;
  /// Email address of the point of contact that should get the unsubscribe requests and notification emails.
  final pulumi.Input<String>? notificationEmail;
  /// Schedule of the scheduled action.
  final pulumi.Input<ScheduleProperties> schedule;
  /// For private scheduled action(Create or Update), scope will be empty.&lt;br /&gt; For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  final pulumi.Input<String> scope;
  /// Status of the scheduled action.
  final pulumi.Input<String> status;
  /// Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  final pulumi.Input<String> viewId;

  /// Creates a new [ScheduledActionByScopeArgs].
  /// [displayName] Scheduled action name.
  /// [fileDestination] Destination format of the view data. This is optional.
  /// [kind] Kind of the scheduled action.
  /// [name] Scheduled action name.
  /// [notification] Notification properties based on scheduled action kind.
  /// [notificationEmail] Email address of the point of contact that should get the unsubscribe requests and notification emails.
  /// [schedule] Schedule of the scheduled action.
  /// [scope] For private scheduled action(Create or Update), scope will be empty.&lt;br /&gt; For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  /// [status] Status of the scheduled action.
  /// [viewId] Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  const ScheduledActionByScopeArgs({
    required this.displayName,
    this.fileDestination,
    this.kind,
    this.name,
    required this.notification,
    this.notificationEmail,
    required this.schedule,
    required this.scope,
    required this.status,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'fileDestination': ?pulumi.Input.mapOptionalInputValue<FileDestination, Map<String, dynamic>>(fileDestination, (value) => value.toMap()),
      'kind': ?kind,
      'name': ?name,
      'notification': pulumi.Input.mapInputValue<NotificationProperties, Map<String, dynamic>>(notification, (value) => value.toMap()),
      'notificationEmail': ?notificationEmail,
      'schedule': pulumi.Input.mapInputValue<ScheduleProperties, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': scope,
      'status': status,
      'viewId': viewId,
    };
  }

  factory ScheduledActionByScopeArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledActionByScopeArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      fileDestination: (() { final guardedValue = map['fileDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notification: pulumi.Input.fromValue(NotificationProperties.fromMap((map['notification']! as Map).cast<String, dynamic>())),
      notificationEmail: (() { final guardedValue = map['notificationEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: pulumi.Input.fromValue(ScheduleProperties.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      viewId: pulumi.Input.fromValue(map['viewId'] as String),
    );
  }
}

