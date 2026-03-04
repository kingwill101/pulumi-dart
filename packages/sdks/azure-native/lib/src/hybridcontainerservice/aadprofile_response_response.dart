// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD Profile specifies attributes for Azure Active Directory integration.
class AADProfileResponseResponse {
  /// The list of AAD group object IDs that will have admin role of the cluster.
  final pulumi.Input<List<String>>? adminGroupObjectIDs;

  /// The client AAD application ID.
  final pulumi.Input<String>? clientAppID;

  /// Whether to enable Azure RBAC for Kubernetes authorization.
  final pulumi.Input<bool>? enableAzureRbac;

  /// Whether to enable managed AAD.
  final pulumi.Input<bool>? managed;

  /// The server AAD application ID.
  final pulumi.Input<String>? serverAppID;

  /// The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  final pulumi.Input<String>? tenantID;

  /// Creates a new [AADProfileResponseResponse].
  /// [adminGroupObjectIDs] The list of AAD group object IDs that will have admin role of the cluster.
  /// [clientAppID] The client AAD application ID.
  /// [enableAzureRbac] Whether to enable Azure RBAC for Kubernetes authorization.
  /// [managed] Whether to enable managed AAD.
  /// [serverAppID] The server AAD application ID.
  /// [tenantID] The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription.
  AADProfileResponseResponse({
    this.adminGroupObjectIDs,
    this.clientAppID,
    this.enableAzureRbac,
    this.managed,
    this.serverAppID,
    this.tenantID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminGroupObjectIDs': ?adminGroupObjectIDs,
      'clientAppID': ?clientAppID,
      'enableAzureRbac': ?enableAzureRbac,
      'managed': ?managed,
      'serverAppID': ?serverAppID,
      'tenantID': ?tenantID,
    };
  }

  factory AADProfileResponseResponse.fromMap(Map<String, dynamic> map) {
    return AADProfileResponseResponse(
      adminGroupObjectIDs: (() {
        final guardedValue = map['adminGroupObjectIDs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      clientAppID: (() {
        final guardedValue = map['clientAppID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableAzureRbac: (() {
        final guardedValue = map['enableAzureRbac'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      managed: (() {
        final guardedValue = map['managed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serverAppID: (() {
        final guardedValue = map['serverAppID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantID: (() {
        final guardedValue = map['tenantID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
