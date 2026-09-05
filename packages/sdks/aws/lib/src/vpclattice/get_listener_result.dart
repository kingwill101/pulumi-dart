// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action.dart';

/// Result data returned by getListener.
class GetListenerResult {
  /// ARN of the listener.
  final String? arn;
  /// Date and time that the listener was created.
  final String? createdAt;
  /// Action for the default listener rule. See `defaultAction` Block below.
  final List<GetListenerDefaultAction>? defaultActions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date and time the listener was last updated.
  final String? lastUpdatedAt;
  /// ID of the listener.
  final String? listenerId;
  final String? listenerIdentifier;
  /// Name of the listener.
  final String? name;
  /// Listener port.
  final int? port;
  /// Listener protocol. Either `HTTPS` or `HTTP`.
  final String? protocol;
  final String? region;
  /// ARN of the service.
  final String? serviceArn;
  /// ID of the service.
  final String? serviceId;
  final String? serviceIdentifier;
  /// List of tags associated with the listener.
  final Map<String, String>? tags;

  /// Creates a new [GetListenerResult].
  /// [arn] ARN of the listener.
  /// [createdAt] Date and time that the listener was created.
  /// [defaultActions] Action for the default listener rule. See `defaultAction` Block below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastUpdatedAt] Date and time the listener was last updated.
  /// [listenerId] ID of the listener.
  /// [listenerIdentifier] Optional.
  /// [name] Name of the listener.
  /// [port] Listener port.
  /// [protocol] Listener protocol. Either `HTTPS` or `HTTP`.
  /// [region] Optional.
  /// [serviceArn] ARN of the service.
  /// [serviceId] ID of the service.
  /// [serviceIdentifier] Optional.
  /// [tags] List of tags associated with the listener.
  const GetListenerResult({
    this.arn,
    this.createdAt,
    this.defaultActions,
    this.id,
    this.lastUpdatedAt,
    this.listenerId,
    this.listenerIdentifier,
    this.name,
    this.port,
    this.protocol,
    this.region,
    this.serviceArn,
    this.serviceId,
    this.serviceIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'defaultActions': ?(() { final guardedValue = defaultActions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListenerDefaultAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'lastUpdatedAt': ?lastUpdatedAt,
      'listenerId': ?listenerId,
      'listenerIdentifier': ?listenerIdentifier,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'serviceId': ?serviceId,
      'serviceIdentifier': ?serviceIdentifier,
      'tags': ?tags,
    };
  }

  factory GetListenerResult.fromMap(Map<String, dynamic> map) {
    return GetListenerResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultActions: (() { final guardedValue = map['defaultActions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListenerDefaultAction>(guardedValue, (value) => GetListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedAt: (() { final guardedValue = map['lastUpdatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listenerIdentifier: (() { final guardedValue = map['listenerIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceIdentifier: (() { final guardedValue = map['serviceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
