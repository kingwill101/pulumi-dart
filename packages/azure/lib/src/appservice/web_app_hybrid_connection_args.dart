// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_web_app_hybrid_connection_web_app_hybrid_connection_args_doc}
/// The set of arguments for WebAppHybridConnection.
/// {@endtemplate}
/// {@macro pulumi_appservice_web_app_hybrid_connection_web_app_hybrid_connection_args_doc}
class WebAppHybridConnectionArgs {
  /// The hostname of the endpoint.
  final pulumi.Input<String> hostname;
  /// The port to use for the endpoint.
  final pulumi.Input<int> port;
  /// The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> relayId;
  /// The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  final pulumi.Input<String>? sendKeyName;
  /// The ID of the Web App for this Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> webAppId;

  /// Creates a new [WebAppHybridConnectionArgs].
  /// [hostname] The hostname of the endpoint.
  /// [port] The port to use for the endpoint.
  /// [relayId] The ID of the Relay Hybrid Connection to use. Changing this forces a new resource to be created.
  /// [sendKeyName] The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey`
  /// [webAppId] The ID of the Web App for this Hybrid Connection. Changing this forces a new resource to be created.
  WebAppHybridConnectionArgs({
    required String hostname,
    required int port,
    required String relayId,
    String? sendKeyName,
    required String webAppId,
  }) :
      hostname = pulumi.Input.asInput<String>(hostname),
      port = pulumi.Input.asInput<int>(port),
      relayId = pulumi.Input.asInput<String>(relayId),
      sendKeyName = pulumi.Input.asOptionalInput<String>(sendKeyName),
      webAppId = pulumi.Input.asInput<String>(webAppId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'port': port,
      'relayId': relayId,
      'sendKeyName': ?sendKeyName,
      'webAppId': webAppId,
    };
  }

  factory WebAppHybridConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppHybridConnectionArgs(
      hostname: map['hostname'] as String,
      port: map['port'] as int,
      relayId: map['relayId'] as String,
      sendKeyName: map['sendKeyName'] == null ? null : map['sendKeyName'] as String,
      webAppId: map['webAppId'] as String,
    );
  }
}

