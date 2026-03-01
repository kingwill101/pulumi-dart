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
  /// For private scheduled action(Create or Update), scope will be empty.<br /> For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
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
  /// [scope] For private scheduled action(Create or Update), scope will be empty.<br /> For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  /// [status] Status of the scheduled action.
  /// [viewId] Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  ScheduledActionByScopeArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<FileDestination>? fileDestination,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    required pulumi.Output<NotificationProperties> notification,
    pulumi.Output<String>? notificationEmail,
    required pulumi.Output<ScheduleProperties> schedule,
    required pulumi.Output<String> scope,
    required pulumi.Output<String> status,
    required pulumi.Output<String> viewId,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      fileDestination = pulumi.Input.asOptionalInput<FileDestination>(fileDestination),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      notification = pulumi.Input.asInput<NotificationProperties>(notification),
      notificationEmail = pulumi.Input.asOptionalInput<String>(notificationEmail),
      schedule = pulumi.Input.asInput<ScheduleProperties>(schedule),
      scope = pulumi.Input.asInput<String>(scope),
      status = pulumi.Input.asInput<String>(status),
      viewId = pulumi.Input.asInput<String>(viewId);

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
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      fileDestination: map['fileDestination'] == null ? null : pulumi.Output.create<FileDestination>(FileDestination.fromMap((map['fileDestination'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notification: pulumi.Output.create<NotificationProperties>(NotificationProperties.fromMap((map['notification'] as Map).cast<String, dynamic>())),
      notificationEmail: map['notificationEmail'] == null ? null : pulumi.Output.create<String>(map['notificationEmail'] as String),
      schedule: pulumi.Output.create<ScheduleProperties>(ScheduleProperties.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
      viewId: pulumi.Output.create<String>(map['viewId'] as String),
    );
  }
}

