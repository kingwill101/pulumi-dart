// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_state.dart';

/// {@template pulumi_apimanagement_workspace_subscription_args_doc}
/// The set of arguments for WorkspaceSubscription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_subscription_args_doc}
class WorkspaceSubscriptionArgs {
  /// Determines whether tracing can be enabled
  final pulumi.Input<bool>? allowTracing;
  /// Determines the type of application which send the create user request. Default is legacy publisher portal.
  final pulumi.Input<String>? appType;
  /// Subscription name.
  final pulumi.Input<String> displayName;
  /// Notify change in Subscription State.
  /// - If false, do not send any email notification for change of state of subscription
  /// - If true, send email notification of change of state of subscription
  final pulumi.Input<bool>? notify;
  /// User (user id path) for whom subscription is being created in form /users/{userId}
  final pulumi.Input<String>? ownerId;
  /// Primary subscription key. If not specified during request key will be generated automatically.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Scope like /products/{productId} or /apis or /apis/{apiId}.
  final pulumi.Input<String> scope;
  /// Secondary subscription key. If not specified during request key will be generated automatically.
  final pulumi.Input<String>? secondaryKey;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  final pulumi.Input<String>? sid;
  /// Initial subscription state. If no value is specified, subscription is created with Submitted state. Possible states are * active – the subscription is active, * suspended – the subscription is blocked, and the subscriber cannot call any APIs of the product, * submitted – the subscription request has been made by the developer, but has not yet been approved or rejected, * rejected – the subscription request has been denied by an administrator, * cancelled – the subscription has been cancelled by the developer or administrator, * expired – the subscription reached its expiration date and was deactivated.
  final pulumi.Input<SubscriptionState>? state;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceSubscriptionArgs].
  /// [allowTracing] Determines whether tracing can be enabled
  /// [appType] Determines the type of application which send the create user request. Default is legacy publisher portal.
  /// [displayName] Subscription name.
  /// [notify] Notify change in Subscription State.
  /// [ownerId] User (user id path) for whom subscription is being created in form /users/{userId}
  /// [primaryKey] Primary subscription key. If not specified during request key will be generated automatically.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Scope like /products/{productId} or /apis or /apis/{apiId}.
  /// [secondaryKey] Secondary subscription key. If not specified during request key will be generated automatically.
  /// [serviceName] The name of the API Management service.
  /// [sid] Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  /// [state] Initial subscription state. If no value is specified, subscription is created with Submitted state. Possible states are * active – the subscription is active, * suspended – the subscription is blocked, and the subscriber cannot call any APIs of the product, * submitted – the subscription request has been made by the developer, but has not yet been approved or rejected, * rejected – the subscription request has been denied by an administrator, * cancelled – the subscription has been cancelled by the developer or administrator, * expired – the subscription reached its expiration date and was deactivated.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceSubscriptionArgs({
    pulumi.Output<bool>? allowTracing,
    pulumi.Output<String>? appType,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? notify,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? primaryKey,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scope,
    pulumi.Output<String>? secondaryKey,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? sid,
    pulumi.Output<SubscriptionState>? state,
    required pulumi.Output<String> workspaceId,
  }) :
      allowTracing = pulumi.Input.asOptionalInput<bool>(allowTracing),
      appType = pulumi.Input.asOptionalInput<String>(appType),
      displayName = pulumi.Input.asInput<String>(displayName),
      notify = pulumi.Input.asOptionalInput<bool>(notify),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asInput<String>(scope),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      sid = pulumi.Input.asOptionalInput<String>(sid),
      state = pulumi.Input.asOptionalInput<SubscriptionState>(state),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTracing': ?allowTracing,
      'appType': ?appType,
      'displayName': displayName,
      'notify': ?notify,
      'ownerId': ?ownerId,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'scope': scope,
      'secondaryKey': ?secondaryKey,
      'serviceName': serviceName,
      'sid': ?sid,
      'state': ?pulumi.Input.mapOptionalInputValue<SubscriptionState, String>(state, (value) => value.value),
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceSubscriptionArgs(
      allowTracing: map['allowTracing'] == null ? null : pulumi.Output.create<bool>(map['allowTracing'] as bool),
      appType: map['appType'] == null ? null : pulumi.Output.create<String>(map['appType'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      notify: map['notify'] == null ? null : pulumi.Output.create<bool>(map['notify'] as bool),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      sid: map['sid'] == null ? null : pulumi.Output.create<String>(map['sid'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<SubscriptionState>(SubscriptionState.fromValue(map['state'] as String)),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

