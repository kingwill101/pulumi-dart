// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_destination_auth_basic.dart';
import 'notification_destination_auth_custom_header.dart';
import 'notification_destination_auth_token.dart';
import 'notification_destination_property.dart';
import 'notification_destination_secure_url.dart';

/// {@template pulumi_index_notification_destination_notification_destination_args_doc}
/// The set of arguments for NotificationDestination.
/// {@endtemplate}
/// {@macro pulumi_index_notification_destination_notification_destination_args_doc}
class NotificationDestinationArgs {
  /// Determines the New Relic account where the notification destination will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// Indicates whether the destination is active.
  final pulumi.Input<bool>? active;
  /// A nested block that describes a basic username and password authentication credentials. Only one auth_basic block is permitted per notification destination definition.  See Nested auth_basic blocks below for details.
  final pulumi.Input<NotificationDestinationAuthBasic>? authBasic;
  /// A nested block that describes a custom header authentication credentials. This field is required when the destination type is WORKFLOW_AUTOMATION and optional for other destination types. Multiple blocks are permitted per notification destination definition. Nested auth_custom_header blocks below for details.
  final pulumi.Input<List<NotificationDestinationAuthCustomHeader>>? authCustomHeaders;
  /// A nested block that describes a token authentication credentials. Only one auth_token block is permitted per notification destination definition.  See Nested auth_token blocks below for details.
  final pulumi.Input<NotificationDestinationAuthToken>? authToken;
  /// The name of the destination.
  final pulumi.Input<String>? name;
  /// A nested block that describes a notification destination property. See Nested property blocks below for details.
  final pulumi.Input<List<NotificationDestinationProperty>> properties;
  /// A nested block that describes a URL that contains sensitive data at the path or parameters. Only one secure_url block is permitted per notification destination definition. See Nested secure_url blocks below for details.
  final pulumi.Input<NotificationDestinationSecureUrl>? secureUrl;
  /// The type of destination.  One of: `EMAIL`, `SERVICE_NOW`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `PAGERDUTY_ACCOUNT_INTEGRATION` or `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS`, `WORKFLOW_AUTOMATION`. The types `SLACK` and `SLACK_COLLABORATION` can only be imported, updated and destroyed (cannot be created via terraform).
  final pulumi.Input<String> type;

  /// Creates a new [NotificationDestinationArgs].
  /// [accountId] Determines the New Relic account where the notification destination will be created. Defaults to the account associated with the API key used.
  /// [active] Indicates whether the destination is active.
  /// [authBasic] A nested block that describes a basic username and password authentication credentials. Only one auth_basic block is permitted per notification destination definition.  See Nested auth_basic blocks below for details.
  /// [authCustomHeaders] A nested block that describes a custom header authentication credentials. This field is required when the destination type is WORKFLOW_AUTOMATION and optional for other destination types. Multiple blocks are permitted per notification destination definition. Nested auth_custom_header blocks below for details.
  /// [authToken] A nested block that describes a token authentication credentials. Only one auth_token block is permitted per notification destination definition.  See Nested auth_token blocks below for details.
  /// [name] The name of the destination.
  /// [properties] A nested block that describes a notification destination property. See Nested property blocks below for details.
  /// [secureUrl] A nested block that describes a URL that contains sensitive data at the path or parameters. Only one secure_url block is permitted per notification destination definition. See Nested secure_url blocks below for details.
  /// [type] The type of destination.  One of: `EMAIL`, `SERVICE_NOW`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `PAGERDUTY_ACCOUNT_INTEGRATION` or `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS`, `WORKFLOW_AUTOMATION`. The types `SLACK` and `SLACK_COLLABORATION` can only be imported, updated and destroyed (cannot be created via terraform).
  NotificationDestinationArgs({
    String? accountId,
    bool? active,
    NotificationDestinationAuthBasic? authBasic,
    List<NotificationDestinationAuthCustomHeader>? authCustomHeaders,
    NotificationDestinationAuthToken? authToken,
    String? name,
    required List<NotificationDestinationProperty> properties,
    NotificationDestinationSecureUrl? secureUrl,
    required String type,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      active = pulumi.Input.asOptionalInput<bool>(active),
      authBasic = pulumi.Input.asOptionalInput<NotificationDestinationAuthBasic>(authBasic),
      authCustomHeaders = pulumi.Input.asOptionalInput<List<NotificationDestinationAuthCustomHeader>>(authCustomHeaders),
      authToken = pulumi.Input.asOptionalInput<NotificationDestinationAuthToken>(authToken),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asInput<List<NotificationDestinationProperty>>(properties),
      secureUrl = pulumi.Input.asOptionalInput<NotificationDestinationSecureUrl>(secureUrl),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'active': ?active,
      'authBasic': ?pulumi.Input.mapOptionalInputValue<NotificationDestinationAuthBasic, Map<String, dynamic>>(authBasic, (value) => value.toMap()),
      'authCustomHeaders': ?pulumi.Input.mapOptionalInputValue<List<NotificationDestinationAuthCustomHeader>, List<Map<String, dynamic>>>(authCustomHeaders, (value) => pulumi.Input.encodeList<NotificationDestinationAuthCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authToken': ?pulumi.Input.mapOptionalInputValue<NotificationDestinationAuthToken, Map<String, dynamic>>(authToken, (value) => value.toMap()),
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<List<NotificationDestinationProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<NotificationDestinationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureUrl': ?pulumi.Input.mapOptionalInputValue<NotificationDestinationSecureUrl, Map<String, dynamic>>(secureUrl, (value) => value.toMap()),
      'type': type,
    };
  }

  factory NotificationDestinationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      active: map['active'] == null ? null : map['active'] as bool,
      authBasic: map['authBasic'] == null ? null : NotificationDestinationAuthBasic.fromMap((map['authBasic'] as Map).cast<String, dynamic>()),
      authCustomHeaders: map['authCustomHeaders'] == null ? null : pulumi.Input.decodeList<NotificationDestinationAuthCustomHeader>(map['authCustomHeaders'], (value) => NotificationDestinationAuthCustomHeader.fromMap((value as Map).cast<String, dynamic>())),
      authToken: map['authToken'] == null ? null : NotificationDestinationAuthToken.fromMap((map['authToken'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      properties: pulumi.Input.decodeList<NotificationDestinationProperty>(map['properties'], (value) => NotificationDestinationProperty.fromMap((value as Map).cast<String, dynamic>())),
      secureUrl: map['secureUrl'] == null ? null : NotificationDestinationSecureUrl.fromMap((map['secureUrl'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

