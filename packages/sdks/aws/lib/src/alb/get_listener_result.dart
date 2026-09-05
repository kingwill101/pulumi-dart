// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action.dart';
import 'get_listener_mutual_authentication.dart';

/// Result data returned by getListener.
class GetListenerResult {
  final String? alpnPolicy;
  final String? arn;
  final String? certificateArn;
  final List<GetListenerDefaultAction>? defaultActions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? loadBalancerArn;
  final List<GetListenerMutualAuthentication>? mutualAuthentications;
  final int? port;
  final String? protocol;
  final String? region;
  final String? sslPolicy;
  final Map<String, String>? tags;

  /// Creates a new [GetListenerResult].
  /// [alpnPolicy] Optional.
  /// [arn] Optional.
  /// [certificateArn] Optional.
  /// [defaultActions] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerArn] Optional.
  /// [mutualAuthentications] Optional.
  /// [port] Optional.
  /// [protocol] Optional.
  /// [region] Optional.
  /// [sslPolicy] Optional.
  /// [tags] Optional.
  const GetListenerResult({
    this.alpnPolicy,
    this.arn,
    this.certificateArn,
    this.defaultActions,
    this.id,
    this.loadBalancerArn,
    this.mutualAuthentications,
    this.port,
    this.protocol,
    this.region,
    this.sslPolicy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpnPolicy': ?alpnPolicy,
      'arn': ?arn,
      'certificateArn': ?certificateArn,
      'defaultActions': ?(() { final guardedValue = defaultActions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListenerDefaultAction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'loadBalancerArn': ?loadBalancerArn,
      'mutualAuthentications': ?(() { final guardedValue = mutualAuthentications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListenerMutualAuthentication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'port': ?port,
      'protocol': ?protocol,
      'region': ?region,
      'sslPolicy': ?sslPolicy,
      'tags': ?tags,
    };
  }

  factory GetListenerResult.fromMap(Map<String, dynamic> map) {
    return GetListenerResult(
      alpnPolicy: (() { final guardedValue = map['alpnPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultActions: (() { final guardedValue = map['defaultActions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListenerDefaultAction>(guardedValue, (value) => GetListenerDefaultAction.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerArn: (() { final guardedValue = map['loadBalancerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mutualAuthentications: (() { final guardedValue = map['mutualAuthentications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListenerMutualAuthentication>(guardedValue, (value) => GetListenerMutualAuthentication.fromMap((value as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
