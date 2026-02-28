// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action.dart';

/// Result data returned by getListener.
class GetListenerResult {
  /// ARN of the listener.
  final String arn;

  /// The date and time that the listener was created.
  final String createdAt;

  /// The actions for the default listener rule.
  final List<GetListenerDefaultAction> defaultActions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The date and time the listener was last updated.
  final String lastUpdatedAt;

  /// The ID of the listener.
  final String listenerId;
  final String listenerIdentifier;

  /// The name of the listener.
  final String name;

  /// The listener port.
  final int port;

  /// The listener protocol. Either `HTTPS` or `HTTP`.
  final String protocol;
  final String region;

  /// The ARN of the service.
  final String serviceArn;

  /// The ID of the service.
  final String serviceId;
  final String serviceIdentifier;

  /// List of tags associated with the listener.
  final Map<String, String> tags;

  /// Creates a new [GetListenerResult].
  /// [arn] ARN of the listener.
  /// [createdAt] The date and time that the listener was created.
  /// [defaultActions] The actions for the default listener rule.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedAt] The date and time the listener was last updated.
  /// [listenerId] The ID of the listener.
  /// [listenerIdentifier] Required.
  /// [name] The name of the listener.
  /// [port] The listener port.
  /// [protocol] The listener protocol. Either `HTTPS` or `HTTP`.
  /// [region] Required.
  /// [serviceArn] The ARN of the service.
  /// [serviceId] The ID of the service.
  /// [serviceIdentifier] Required.
  /// [tags] List of tags associated with the listener.
  GetListenerResult({
    required this.arn,
    required this.createdAt,
    required this.defaultActions,
    required this.id,
    required this.lastUpdatedAt,
    required this.listenerId,
    required this.listenerIdentifier,
    required this.name,
    required this.port,
    required this.protocol,
    required this.region,
    required this.serviceArn,
    required this.serviceId,
    required this.serviceIdentifier,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdAt'] = createdAt;
    map['defaultActions'] =
        pulumi.Input.encodeList<GetListenerDefaultAction, Map<String, dynamic>>(
            defaultActions, (value) => value.toMap());
    map['id'] = id;
    map['lastUpdatedAt'] = lastUpdatedAt;
    map['listenerId'] = listenerId;
    map['listenerIdentifier'] = listenerIdentifier;
    map['name'] = name;
    map['port'] = port;
    map['protocol'] = protocol;
    map['region'] = region;
    map['serviceArn'] = serviceArn;
    map['serviceId'] = serviceId;
    map['serviceIdentifier'] = serviceIdentifier;
    map['tags'] = tags;
    return map;
  }

  factory GetListenerResult.fromMap(Map<String, dynamic> map) {
    return GetListenerResult(
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      defaultActions: pulumi.Input.decodeList<GetListenerDefaultAction>(
          map['defaultActions'],
          (value) => GetListenerDefaultAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastUpdatedAt: map['lastUpdatedAt'] as String,
      listenerId: map['listenerId'] as String,
      listenerIdentifier: map['listenerIdentifier'] as String,
      name: map['name'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      region: map['region'] as String,
      serviceArn: map['serviceArn'] as String,
      serviceId: map['serviceId'] as String,
      serviceIdentifier: map['serviceIdentifier'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
