// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_anomaly_alert_anomaly_alert_args_doc}
/// The set of arguments for AnomalyAlert.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_anomaly_alert_anomaly_alert_args_doc}
class AnomalyAlertArgs {
  /// The display name which should be used for this Cost Anomaly Alert.
  final pulumi.Input<String> displayName;
  /// Specifies a list of email addresses which the Anomaly Alerts are send to.
  final pulumi.Input<List<String>> emailAddresses;
  /// The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
  final pulumi.Input<String> emailSubject;
  /// The message of the Cost Anomaly Alert. Maximum length of the message is 250.
  final pulumi.Input<String>? message;
  /// The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens.
  final pulumi.Input<String>? name;
  /// The email address of the point of contact that should get the unsubscribe requests and notification emails.
  final pulumi.Input<String>? notificationEmail;
  /// The ID of the Subscription this Cost Anomaly Alert is scoped to. Changing this forces a new resource to be created. When not supplied this defaults to the subscription configured in the provider.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AnomalyAlertArgs].
  /// [displayName] The display name which should be used for this Cost Anomaly Alert.
  /// [emailAddresses] Specifies a list of email addresses which the Anomaly Alerts are send to.
  /// [emailSubject] The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
  /// [message] The message of the Cost Anomaly Alert. Maximum length of the message is 250.
  /// [name] The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens.
  /// [notificationEmail] The email address of the point of contact that should get the unsubscribe requests and notification emails.
  /// [subscriptionId] The ID of the Subscription this Cost Anomaly Alert is scoped to. Changing this forces a new resource to be created. When not supplied this defaults to the subscription configured in the provider.
  AnomalyAlertArgs({
    required String displayName,
    required List<String> emailAddresses,
    required String emailSubject,
    String? message,
    String? name,
    String? notificationEmail,
    String? subscriptionId,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      emailAddresses = pulumi.Input.asInput<List<String>>(emailAddresses),
      emailSubject = pulumi.Input.asInput<String>(emailSubject),
      message = pulumi.Input.asOptionalInput<String>(message),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationEmail = pulumi.Input.asOptionalInput<String>(notificationEmail),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'emailAddresses': emailAddresses,
      'emailSubject': emailSubject,
      'message': ?message,
      'name': ?name,
      'notificationEmail': ?notificationEmail,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AnomalyAlertArgs.fromMap(Map<String, dynamic> map) {
    return AnomalyAlertArgs(
      displayName: map['displayName'] as String,
      emailAddresses: (map['emailAddresses'] as List).cast<String>(),
      emailSubject: map['emailSubject'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notificationEmail: map['notificationEmail'] == null ? null : map['notificationEmail'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

