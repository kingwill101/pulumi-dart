// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_hybrid_connection_slot_args_doc}
/// The set of arguments for WebAppHybridConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_hybrid_connection_slot_args_doc}
class WebAppHybridConnectionSlotArgs {
  /// The hostname of the endpoint.
  final pulumi.Input<String>? hostname;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The name of the web app.
  final pulumi.Input<String> name;
  /// The namespace for this hybrid connection.
  final pulumi.Input<String> namespaceName;
  /// The port of the endpoint.
  final pulumi.Input<int>? port;
  /// The ARM URI to the Service Bus relay.
  final pulumi.Input<String>? relayArmUri;
  /// The name of the Service Bus relay.
  final pulumi.Input<String>? relayName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service Bus key which has Send permissions. This is used to authenticate to Service Bus.
  final pulumi.Input<String>? sendKeyName;
  /// The value of the Service Bus key. This is used to authenticate to Service Bus. In ARM this key will not be returned
  /// normally, use the POST /listKeys API instead.
  final pulumi.Input<String>? sendKeyValue;
  /// The name of the Service Bus namespace.
  final pulumi.Input<String>? serviceBusNamespace;
  /// The suffix for the service bus endpoint. By default this is .servicebus.windows.net
  final pulumi.Input<String>? serviceBusSuffix;
  /// The name of the slot for the web app.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppHybridConnectionSlotArgs].
  /// [hostname] The hostname of the endpoint.
  /// [kind] Kind of resource.
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [port] The port of the endpoint.
  /// [relayArmUri] The ARM URI to the Service Bus relay.
  /// [relayName] The name of the Service Bus relay.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [sendKeyName] The name of the Service Bus key which has Send permissions. This is used to authenticate to Service Bus.
  /// [sendKeyValue] The value of the Service Bus key. This is used to authenticate to Service Bus. In ARM this key will not be returned
  /// [serviceBusNamespace] The name of the Service Bus namespace.
  /// [serviceBusSuffix] The suffix for the service bus endpoint. By default this is .servicebus.windows.net
  /// [slot] The name of the slot for the web app.
  WebAppHybridConnectionSlotArgs({
    String? hostname,
    String? kind,
    required String name,
    required String namespaceName,
    int? port,
    String? relayArmUri,
    String? relayName,
    required String resourceGroupName,
    String? sendKeyName,
    String? sendKeyValue,
    String? serviceBusNamespace,
    String? serviceBusSuffix,
    required String slot,
  }) :
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      port = pulumi.Input.asOptionalInput<int>(port),
      relayArmUri = pulumi.Input.asOptionalInput<String>(relayArmUri),
      relayName = pulumi.Input.asOptionalInput<String>(relayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sendKeyName = pulumi.Input.asOptionalInput<String>(sendKeyName),
      sendKeyValue = pulumi.Input.asOptionalInput<String>(sendKeyValue),
      serviceBusNamespace = pulumi.Input.asOptionalInput<String>(serviceBusNamespace),
      serviceBusSuffix = pulumi.Input.asOptionalInput<String>(serviceBusSuffix),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'kind': ?kind,
      'name': name,
      'namespaceName': namespaceName,
      'port': ?port,
      'relayArmUri': ?relayArmUri,
      'relayName': ?relayName,
      'resourceGroupName': resourceGroupName,
      'sendKeyName': ?sendKeyName,
      'sendKeyValue': ?sendKeyValue,
      'serviceBusNamespace': ?serviceBusNamespace,
      'serviceBusSuffix': ?serviceBusSuffix,
      'slot': slot,
    };
  }

  factory WebAppHybridConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppHybridConnectionSlotArgs(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      relayArmUri: map['relayArmUri'] == null ? null : map['relayArmUri'] as String,
      relayName: map['relayName'] == null ? null : map['relayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sendKeyName: map['sendKeyName'] == null ? null : map['sendKeyName'] as String,
      sendKeyValue: map['sendKeyValue'] == null ? null : map['sendKeyValue'] as String,
      serviceBusNamespace: map['serviceBusNamespace'] == null ? null : map['serviceBusNamespace'] as String,
      serviceBusSuffix: map['serviceBusSuffix'] == null ? null : map['serviceBusSuffix'] as String,
      slot: map['slot'] as String,
    );
  }
}

