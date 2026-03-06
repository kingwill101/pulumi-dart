// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Determines whether tracing is enabled
  final bool? allowTracing;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Subscription creation date. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String createdDate;
  /// The name of the subscription, or null if the subscription has no name.
  final String? displayName;
  /// Date when subscription was cancelled or expired. The setting is for audit purposes only and the subscription is not automatically cancelled. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String? endDate;
  /// Subscription expiration date. The setting is for audit purposes only and the subscription is not automatically expired. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String? expirationDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Upcoming subscription expiration notification date. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String? notificationDate;
  /// The user resource identifier of the subscription owner. The value is a valid relative URL in the format of /users/{userId} where {userId} is a user identifier.
  final String? ownerId;
  /// Subscription primary key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? primaryKey;
  /// Scope like /products/{productId} or /apis or /apis/{apiId}.
  final String scope;
  /// Subscription secondary key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? secondaryKey;
  /// Subscription activation date. The setting is for audit purposes only and the subscription is not automatically activated. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String? startDate;
  /// Subscription state. Possible states are * active – the subscription is active, * suspended – the subscription is blocked, and the subscriber cannot call any APIs of the product, * submitted – the subscription request has been made by the developer, but has not yet been approved or rejected, * rejected – the subscription request has been denied by an administrator, * cancelled – the subscription has been cancelled by the developer or administrator, * expired – the subscription reached its expiration date and was deactivated.
  final String state;
  /// Optional subscription comment added by an administrator when the state is changed to the 'rejected'.
  final String? stateComment;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSubscriptionResult].
  /// [allowTracing] Determines whether tracing is enabled
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] Subscription creation date. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [displayName] The name of the subscription, or null if the subscription has no name.
  /// [endDate] Date when subscription was cancelled or expired. The setting is for audit purposes only and the subscription is not automatically cancelled. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [expirationDate] Subscription expiration date. The setting is for audit purposes only and the subscription is not automatically expired. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [notificationDate] Upcoming subscription expiration notification date. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [ownerId] The user resource identifier of the subscription owner. The value is a valid relative URL in the format of /users/{userId} where {userId} is a user identifier.
  /// [primaryKey] Subscription primary key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [scope] Scope like /products/{productId} or /apis or /apis/{apiId}.
  /// [secondaryKey] Subscription secondary key. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [startDate] Subscription activation date. The setting is for audit purposes only and the subscription is not automatically activated. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [state] Subscription state. Possible states are * active – the subscription is active, * suspended – the subscription is blocked, and the subscriber cannot call any APIs of the product, * submitted – the subscription request has been made by the developer, but has not yet been approved or rejected, * rejected – the subscription request has been denied by an administrator, * cancelled – the subscription has been cancelled by the developer or administrator, * expired – the subscription reached its expiration date and was deactivated.
  /// [stateComment] Optional subscription comment added by an administrator when the state is changed to the 'rejected'.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSubscriptionResult({
    this.allowTracing,
    required this.azureApiVersion,
    required this.createdDate,
    this.displayName,
    this.endDate,
    this.expirationDate,
    required this.id,
    required this.name,
    this.notificationDate,
    this.ownerId,
    this.primaryKey,
    required this.scope,
    this.secondaryKey,
    this.startDate,
    required this.state,
    this.stateComment,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowTracing': ?allowTracing,
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'displayName': ?displayName,
      'endDate': ?endDate,
      'expirationDate': ?expirationDate,
      'id': id,
      'name': name,
      'notificationDate': ?notificationDate,
      'ownerId': ?ownerId,
      'primaryKey': ?primaryKey,
      'scope': scope,
      'secondaryKey': ?secondaryKey,
      'startDate': ?startDate,
      'state': state,
      'stateComment': ?stateComment,
      'type': type,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      allowTracing: (() { final guardedValue = map['allowTracing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      notificationDate: (() { final guardedValue = map['notificationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: map['scope'] as String,
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: map['state'] as String,
      stateComment: (() { final guardedValue = map['stateComment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

