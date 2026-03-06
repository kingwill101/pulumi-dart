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
  const WorkspaceSubscriptionArgs({
    this.allowTracing,
    this.appType,
    required this.displayName,
    this.notify,
    this.ownerId,
    this.primaryKey,
    required this.resourceGroupName,
    required this.scope,
    this.secondaryKey,
    required this.serviceName,
    this.sid,
    this.state,
    required this.workspaceId,
  });

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
      'state': ?pulumi.Input.mapOptionalInputValue<SubscriptionState, String>(state, (value) => value.wireValue),
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceSubscriptionArgs(
      allowTracing: (() { final guardedValue = map['allowTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appType: (() { final guardedValue = map['appType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      notify: (() { final guardedValue = map['notify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionState.fromValue(guardedValue as String)); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}

