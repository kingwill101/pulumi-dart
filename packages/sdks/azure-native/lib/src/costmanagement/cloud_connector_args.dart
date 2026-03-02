// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_cloud_connector_args_doc}
/// The set of arguments for CloudConnector.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_cloud_connector_args_doc}
class CloudConnectorArgs {
  /// Connector billing model
  final pulumi.Input<String>? billingModel;
  /// Connector Name.
  final pulumi.Input<String>? connectorName;
  /// Credentials authentication key (eg AWS ARN)
  final pulumi.Input<String>? credentialsKey;
  /// Credentials secret (eg AWS ExternalId)
  final pulumi.Input<String>? credentialsSecret;
  /// Default ManagementGroupId
  final pulumi.Input<String>? defaultManagementGroupId;
  /// Connector DisplayName
  final pulumi.Input<String>? displayName;
  /// Connector kind (eg aws)
  final pulumi.Input<String>? kind;
  /// Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  final pulumi.Input<String>? reportId;
  /// Billing SubscriptionId
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [CloudConnectorArgs].
  /// [billingModel] Connector billing model
  /// [connectorName] Connector Name.
  /// [credentialsKey] Credentials authentication key (eg AWS ARN)
  /// [credentialsSecret] Credentials secret (eg AWS ExternalId)
  /// [defaultManagementGroupId] Default ManagementGroupId
  /// [displayName] Connector DisplayName
  /// [kind] Connector kind (eg aws)
  /// [reportId] Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  /// [subscriptionId] Billing SubscriptionId
  CloudConnectorArgs({
    this.billingModel,
    this.connectorName,
    this.credentialsKey,
    this.credentialsSecret,
    this.defaultManagementGroupId,
    this.displayName,
    this.kind,
    this.reportId,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingModel': ?billingModel,
      'connectorName': ?connectorName,
      'credentialsKey': ?credentialsKey,
      'credentialsSecret': ?credentialsSecret,
      'defaultManagementGroupId': ?defaultManagementGroupId,
      'displayName': ?displayName,
      'kind': ?kind,
      'reportId': ?reportId,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory CloudConnectorArgs.fromMap(Map<String, dynamic> map) {
    return CloudConnectorArgs(
      billingModel: map['billingModel'] == null ? null : (map['billingModel']! as String).input(),
      connectorName: map['connectorName'] == null ? null : (map['connectorName']! as String).input(),
      credentialsKey: map['credentialsKey'] == null ? null : (map['credentialsKey']! as String).input(),
      credentialsSecret: map['credentialsSecret'] == null ? null : (map['credentialsSecret']! as String).input(),
      defaultManagementGroupId: map['defaultManagementGroupId'] == null ? null : (map['defaultManagementGroupId']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      reportId: map['reportId'] == null ? null : (map['reportId']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

